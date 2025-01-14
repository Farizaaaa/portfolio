// ignore_for_file: camel_case_types

class Experience {
  final String companyName;
  final String role;
  final String startTime;
  final String endTime;
  final String workType;
  final String duration;
  final bool start;
  final bool end;

  Experience(
      {required this.companyName,
      required this.role,
      required this.startTime,
      required this.endTime,
      required this.workType,
      required this.start,
      required this.end,
      required this.duration});
}

List<Experience> experiences = [
  Experience(
    role: 'Android Developer',
    companyName: 'Resolute India Pvt.Ltd',
    startTime: 'Dec 2023',
    endTime: 'present',
    workType: 'OnSite',
    duration: '',
    start: true,
    end: true,
  ),
  Experience(
    role: 'Flutter Developer Intern',
    companyName: 'Camerin Folks Pvt. Ltd ',
    startTime: 'July 27 2023',
    endTime: 'December 14 2023',
    workType: 'OnSite',
    duration: '6 months',
    start: true,
    end: true,
  ),
  Experience(
    role: 'Python Full Stack Intern',
    companyName: 'Python Full Stack Intern ',
    startTime: 'Jan 10 2023',
    endTime: 'Apr 10 2023',
    workType: 'OnSite',
    duration: '3 months',
    start: true,
    end: true,
  ),
];
