class Experience {
  final String? title, description;
  final Company? company;
  Experience({this.title, this.description, this.company});
}

class Company {
  final String? title, url, logo,duration,location;
  Company({this.title, this.url, this.logo,this.duration,this.location});
}

// ignore: non_constant_identifier_names
List<Experience> demo_experience = [
  Experience(
    title: "Software Engineer Intern",
    company: Company(
        title: "Athlete Arena",
        duration: "2023 DEC - 2024 MAR",
        location: 'Coimbatore',
        url: 'https://athletearena.in/',
        logo: 'images/athlete_arena.png'),
    description:
        """• Led the development of a comprehensive mobile booking platform for sports and fitness 
services, catering to both consumers and service providers\n• Architected and implemented robust backend infrastructure to support real-time 
booking, scheduling, and payment processing capabilities""",
  ),
  Experience(
    title: "System Engineer Intern",
    company: Company(
        title: "Subconscious Compute Pvt. Ltd.",
        duration:'2022 AUG - 2022 DEC',
        location: 'Bengaluru',
        url: "https://www.subcom.tech/",
        logo: "images/subcom_logo_long-4abdc3de.png"),
    description:
        """• Designed and developed scalable, high-performance software systems to support complex bioinformatics 
research and analysis workflows, delivering innovative features and enhancements
• Collaborated cross-functionally with data scientists, researchers, and domain experts
 to understand intricate bioinformatics challenges and translate them into effective software solutions
""",
  ),
];
