import 'package:tuiicore/core/common/core_i18n.dart';
import 'package:tuiicore/core/config/theme/tuii_colors.dart';
import 'package:tuiicore/core/enums/enrollment_status_type.dart';
import 'package:tuiicore/core/enums/lesson_booking_status_type.dart';
import 'package:tuiicore/core/enums/lesson_delivery_type.dart';
import 'package:tuiicore/core/enums/reminder_type.dart';
import 'package:tuiicore/core/enums/sort_order_type.dart';
import 'package:tuiicore/core/enums/task_status_type.dart';
import 'package:tuiicore/core/enums/tutor_home_sort_field_type.dart';
import 'package:tuiicore/core/models/calendar_legend_item_model.dart';
import 'package:tuiicore/core/models/generic_sort_item_model.dart';
import 'package:tuiicore/core/models/reminder_type_item_model.dart';
import 'package:tuiicore/core/models/status_item_model.dart';
import 'package:tuiicore/core/models/tutor_home_sort_item_model.dart';

import '../models/filter_item_model.dart';

class DataModels {
  static List<FilterItemModel> tutorHomeFilterItems = [
    FilterItemModel(
        index: 0,
        checked: false,
        text: EnrollmentStatusType.awaitingConfirmation.display),
    FilterItemModel(
        index: 1,
        checked: false,
        text: EnrollmentStatusType.awaitingResponse.display),
    FilterItemModel(
        index: 2, checked: false, text: EnrollmentStatusType.pending.display),
    FilterItemModel(
        index: 3, checked: false, text: EnrollmentStatusType.enrolled.display),
    FilterItemModel(
        index: 4, checked: false, text: EnrollmentStatusType.inactive.display),
    FilterItemModel(
        index: 5, checked: false, text: EnrollmentStatusType.rejected.display),
    FilterItemModel(index: 5, checked: false, text: 'Upcoming Lessons'.i18n),
  ];

  static List<FilterItemModel> classroomTaskListFilterItems = [
    FilterItemModel(
        index: 0, checked: false, text: TaskStatusType.planned.display),
    FilterItemModel(
        index: 1, checked: false, text: TaskStatusType.active.display),
    FilterItemModel(
        index: 2, checked: false, text: TaskStatusType.completed.display),
  ];

  //THIS IS DYNAMIC FROM DB
  static List<FilterItemModel> classroomResourceListFilterItems = [];

  static List<ClassroomHomeSortItemModel> tutorHomeIndividualSortItems = [
    ClassroomHomeSortItemModel(
        index: 0,
        homeSortFieldType: ClassroomHomeSortFieldType.userFirstName,
        communicationGroupsSortFieldType: CommunicationGroupSortFieldType.none,
        sortOrderType: SortOrderType.ascending,
        text: "First Name".i18n),
    ClassroomHomeSortItemModel(
        index: 1,
        homeSortFieldType: ClassroomHomeSortFieldType.userLastName,
        communicationGroupsSortFieldType: CommunicationGroupSortFieldType.none,
        sortOrderType: SortOrderType.ascending,
        text: "Last Name".i18n),
    ClassroomHomeSortItemModel(
        index: 2,
        homeSortFieldType: ClassroomHomeSortFieldType.startDate,
        communicationGroupsSortFieldType: CommunicationGroupSortFieldType.none,
        sortOrderType: SortOrderType.descending,
        text: "Next Lesson Date".i18n),
    ClassroomHomeSortItemModel(
        index: 3,
        homeSortFieldType: ClassroomHomeSortFieldType.enrollmentStatus,
        communicationGroupsSortFieldType: CommunicationGroupSortFieldType.none,
        sortOrderType: SortOrderType.ascending,
        text: "Status".i18n),
  ];

  static List<ClassroomHomeSortItemModel> studentHomeIndividualSortItems = [
    ClassroomHomeSortItemModel(
        index: 0,
        homeSortFieldType: ClassroomHomeSortFieldType.userFirstName,
        communicationGroupsSortFieldType: CommunicationGroupSortFieldType.none,
        sortOrderType: SortOrderType.ascending,
        text: "First Name".i18n),
    ClassroomHomeSortItemModel(
        index: 1,
        homeSortFieldType: ClassroomHomeSortFieldType.userLastName,
        communicationGroupsSortFieldType: CommunicationGroupSortFieldType.none,
        sortOrderType: SortOrderType.ascending,
        text: "Last Name".i18n),
    ClassroomHomeSortItemModel(
        index: 2,
        homeSortFieldType: ClassroomHomeSortFieldType.startDate,
        communicationGroupsSortFieldType: CommunicationGroupSortFieldType.none,
        sortOrderType: SortOrderType.descending,
        text: "Next Lesson Date".i18n),
  ];

  static List<ClassroomHomeSortItemModel>
      tutorHomeCommunicationGroupsSearchItems = [
    ClassroomHomeSortItemModel(
        index: 0,
        homeSortFieldType: ClassroomHomeSortFieldType.none,
        communicationGroupsSortFieldType:
            CommunicationGroupSortFieldType.communicationGroupCount,
        sortOrderType: SortOrderType.ascending,
        text: "Member Count".i18n),
    ClassroomHomeSortItemModel(
        index: 1,
        homeSortFieldType: ClassroomHomeSortFieldType.none,
        communicationGroupsSortFieldType:
            CommunicationGroupSortFieldType.communicationGroupName,
        sortOrderType: SortOrderType.ascending,
        text: "Name".i18n),
  ];

  static List<ClassroomHomeSortItemModel> studentHomeEnrollmentsSearchItems = [
    ClassroomHomeSortItemModel(
        index: 0,
        homeSortFieldType: ClassroomHomeSortFieldType.none,
        communicationGroupsSortFieldType:
            CommunicationGroupSortFieldType.communicationGroupCount,
        sortOrderType: SortOrderType.ascending,
        text: "Member Count".i18n),
    ClassroomHomeSortItemModel(
        index: 1,
        homeSortFieldType: ClassroomHomeSortFieldType.none,
        communicationGroupsSortFieldType:
            CommunicationGroupSortFieldType.communicationGroupName,
        sortOrderType: SortOrderType.ascending,
        text: "Name".i18n),
  ];

  static List<GenericSortItemModel> studentHomeSortItems = [];

  static List<GenericSortItemModel> studentClassroomTaskListSortItems = [
    GenericSortItemModel(
        index: 0,
        sortFieldName: 'clear',
        sortOrderType: SortOrderType.none,
        text: "Clear".i18n),
    GenericSortItemModel(
        index: 1,
        sortFieldName: 'title',
        sortOrderType: SortOrderType.ascending,
        text: "Name".i18n),
    GenericSortItemModel(
        index: 2,
        sortFieldName: 'status',
        sortOrderType: SortOrderType.ascending,
        text: "Status".i18n),
    GenericSortItemModel(
        index: 3,
        sortFieldName: 'dueDate',
        sortOrderType: SortOrderType.descending,
        text: "Due Date".i18n),
  ];

  static List<GenericSortItemModel> studentClassroomResourceListSortItems = [
    GenericSortItemModel(
        index: 0,
        sortFieldName: 'clear',
        sortOrderType: SortOrderType.none,
        text: "Clear".i18n),
    GenericSortItemModel(
        index: 1,
        sortFieldName: 'title',
        sortOrderType: SortOrderType.ascending,
        text: "Name".i18n),
    GenericSortItemModel(
        index: 2,
        sortFieldName: 'type',
        sortOrderType: SortOrderType.ascending,
        text: "Type".i18n),
  ];

  static List<FilterItemModel> studentClassroomLessonListFilterItems = [
    FilterItemModel(
        index: 0, checked: false, text: LessonDeliveryType.virtual.display),
    FilterItemModel(
        index: 1, checked: false, text: LessonDeliveryType.studio.display),
    FilterItemModel(
        index: 2, checked: false, text: LessonDeliveryType.homeVisit.display),
  ];

  static List<GenericSortItemModel> studentClassroomLessonListSortItems = [
    GenericSortItemModel(
        index: 0,
        sortFieldName: 'clear',
        sortOrderType: SortOrderType.none,
        text: "Clear".i18n),
    GenericSortItemModel(
        index: 1,
        sortFieldName: 'lessonTitle',
        sortOrderType: SortOrderType.ascending,
        text: "Lesson Name".i18n),
    GenericSortItemModel(
        index: 2,
        sortFieldName: 'lessonDescription',
        sortOrderType: SortOrderType.ascending,
        text: "Description".i18n),
    GenericSortItemModel(
        index: 3,
        sortFieldName: 'startDate',
        sortOrderType: SortOrderType.descending,
        text: "Start Date".i18n),
    GenericSortItemModel(
        index: 4,
        sortFieldName: 'lessonDelivery',
        sortOrderType: SortOrderType.descending,
        text: "Delivery Mode".i18n),
  ];

  static List<GenericStatusItemModel> tutorClassroomStatusItems = [
    GenericStatusItemModel(
        index: 0, statusType: TaskStatusType.planned, text: "Planned".i18n),
    GenericStatusItemModel(
        index: 1, statusType: TaskStatusType.active, text: "Active".i18n),
    GenericStatusItemModel(
        index: 2, statusType: TaskStatusType.completed, text: "Completed".i18n),
  ];

  static List<GenericStatusItemModel> studentClassroomStatusItems = [
    GenericStatusItemModel(
        index: 0, statusType: TaskStatusType.active, text: "Active".i18n),
    GenericStatusItemModel(
        index: 1, statusType: TaskStatusType.completed, text: "Completed".i18n),
  ];

  static List<GenericReminderTypeItemModel> studentClassroomReminderTypeItems =
      [
    GenericReminderTypeItemModel(
        index: 0,
        reminderType: ReminderType.notification,
        text: "Notification".i18n),
    GenericReminderTypeItemModel(
        index: 1, reminderType: ReminderType.email, text: "Email".i18n),
    GenericReminderTypeItemModel(
        index: 2, reminderType: ReminderType.sms, text: "SMS".i18n),
  ];

  static List<String> popularTags = [
    'Singing',
    'Piano',
    'Violin',
    'Clarinet',
    'Guitar',
    'Drums',
    'Music Theory',
  ];

  static List<CalendarLegendItemModel> calendarLegendItems = [
    CalendarLegendItemModel(
        color: TuiiColors.primary, text: 'Edit Target'.i18n),
    CalendarLegendItemModel(
        color: TuiiColors.enrolledStatus, text: 'Editable'.i18n),
    CalendarLegendItemModel(
        color: TuiiColors.defaultColor, text: 'Online'.i18n),
    CalendarLegendItemModel(
        color: TuiiColors.tuiiBadge, text: 'Home visit'.i18n),
    CalendarLegendItemModel(color: TuiiColors.active, text: 'Studio'.i18n),
    // CalendarLegendItemModel(
    //     color: TuiiColors.muted, text: 'Unavailability'.i18n),
  ];

  static List<GenericSortItemModel> lessonBookingsListSortItems = [
    GenericSortItemModel(
        index: 0,
        sortFieldName: 'clear',
        sortOrderType: SortOrderType.none,
        text: "Clear".i18n),
    GenericSortItemModel(
        index: 1,
        sortFieldName: 'studentName',
        sortOrderType: SortOrderType.ascending,
        text: "Student Name".i18n),
    GenericSortItemModel(
        index: 2,
        sortFieldName: 'subjectName',
        sortOrderType: SortOrderType.ascending,
        text: "Subject".i18n),
    GenericSortItemModel(
        index: 3,
        sortFieldName: 'lastUpdatedDate',
        sortOrderType: SortOrderType.descending,
        text: "Date".i18n),
    GenericSortItemModel(
        index: 3,
        sortFieldName: 'totalAmount',
        sortOrderType: SortOrderType.descending,
        text: "Amount".i18n),
  ];

  static List<FilterItemModel> lessonBookingsListFilterItems = [
    FilterItemModel(
        index: 0,
        checked: false,
        text: LessonBookingStatusType.pending.display),
    FilterItemModel(
        index: 1, checked: false, text: LessonBookingStatusType.paid.display),
    FilterItemModel(
        index: 2,
        checked: false,
        text: LessonBookingStatusType.rejected.display),
  ];

  static List<GenericSortItemModel> resourceLibrarySortItems = [
    GenericSortItemModel(
        index: 0,
        sortFieldName: 'clear',
        sortOrderType: SortOrderType.none,
        text: "Clear".i18n),
    GenericSortItemModel(
        index: 1,
        sortFieldName: 'title',
        sortOrderType: SortOrderType.ascending,
        text: "Title".i18n),
    GenericSortItemModel(
        index: 2,
        sortFieldName: 'type',
        sortOrderType: SortOrderType.ascending,
        text: "Media Type".i18n),
    GenericSortItemModel(
        index: 3,
        sortFieldName: 'creationDate',
        sortOrderType: SortOrderType.descending,
        text: "Date Created".i18n),
  ];

  static List<GenericSortItemModel> parentTutorConnectionSortItems = [
    GenericSortItemModel(
        index: 0,
        sortFieldName: 'clear',
        sortOrderType: SortOrderType.none,
        text: "Clear".i18n),
    GenericSortItemModel(
        index: 1,
        sortFieldName: 'tutorFullName',
        sortOrderType: SortOrderType.ascending,
        text: "Name".i18n),
    GenericSortItemModel(
        index: 2,
        sortFieldName: 'connectionDate',
        sortOrderType: SortOrderType.descending,
        text: "Connection Date".i18n),
    GenericSortItemModel(
        index: 3,
        sortFieldName: 'tutorSubject',
        sortOrderType: SortOrderType.descending,
        text: "Connection Date".i18n),
  ];
}
