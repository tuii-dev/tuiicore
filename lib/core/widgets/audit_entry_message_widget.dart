import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tuiicore/core/common/lesson_booking_audit_entry_model.dart';
import 'package:tuiicore/core/config/theme/tuii_colors.dart';

class AuditEntryMessage extends StatelessWidget {
  const AuditEntryMessage(
      {Key? key,
      required this.auditEntry,
      required this.index,
      required this.userName})
      : super(key: key);

  final LessonBookingAuditEntryModel auditEntry;
  final int index;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      color: TuiiColors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              '${DateFormat.MMMd().add_jm().format(auditEntry.creationDate)}, $userName said:',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: TuiiColors.black,
              )),
          const SizedBox(height: 5),
          Text(auditEntry.message,
              softWrap: true,
              style: const TextStyle(
                fontSize: 14,
                color: TuiiColors.black,
              )),
        ],
      ),
    );
  }
}