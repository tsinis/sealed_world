// ignore_for_file: public_member_api_docs, it's not a public package.
import "dart:developer";

import "package:vm_service/vm_service.dart" show MemoryUsage;
import "package:vm_service/vm_service_io.dart" show vmServiceConnectUri;

/// Returns heap usage.
class MemoryTools extends MemoryUsage {
  MemoryTools({super.externalUsage, super.heapCapacity, super.heapUsage});

  Future<MemoryTools?> getMemoryUsage() async {
    final info = await Service.getInfo();
    if (info.serverWebSocketUri == null) return null;
    final service =
        await vmServiceConnectUri(info.serverWebSocketUri.toString());
    final virtualMachine = await service.getVM();
    final isolateId = virtualMachine.isolates?.firstOrNull?.id;
    final memory = isolateId == null
        ? MemoryTools(externalUsage: 0, heapCapacity: 0, heapUsage: 0)
        : await service.getMemoryUsage(isolateId);
    await service.dispose();

    return MemoryTools(
      externalUsage: memory.externalUsage,
      heapCapacity: memory.heapCapacity,
      heapUsage: memory.heapUsage,
    );
  }

  Future<MemoryTools?> compareTo(MemoryTools? other) async {
    final memNow = await getMemoryUsage();

    return memNow != null ? memNow - other : null;
  }

  // Define a method to calculate the difference between two MemoryTools
  // instances.
  MemoryTools operator -(MemoryTools? other) => MemoryTools(
        externalUsage: (externalUsage ?? 0) - (other?.externalUsage ?? 0),
        heapCapacity: (heapCapacity ?? 0) - (other?.heapCapacity ?? 0),
        heapUsage: (heapUsage ?? 0) - (other?.heapUsage ?? 0),
      );

  /// Converts bytes to megabytes with 1 decimal place.
  double toMB(int? bytes) =>
      bytes == null ? 0 : (bytes / (1024 * 1024)).roundToDouble();

  @override
  String toString() =>
      """Memory(externalUsage: ${toMB(externalUsage)} MB, heapCapacity: ${toMB(heapCapacity)} MB, heapUsage: ${toMB(heapUsage)} MB)""";
}
