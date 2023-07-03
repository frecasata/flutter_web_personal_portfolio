class Project {
  final String? title, description;

  Project({this.title, this.description});
}

List<Project> demo_projects = [
  Project(
    title: "Modular Synthesizer Project (2020-2021) - Passion project",
    description:
        """The Modular Synthesizer Project, undertaken from 2020 to 2021, was a passion project that allowed me to delve into the fascinating world of electronic music and synthesizers.

One of the primary objectives of the project was to prototype and construct various synthesizer modules. To accomplish this, I utilized KiCad, a powerful PCB design tool, to design and create the circuit boards for the modules. KiCad enabled me to create custom designs, define component placements, and ensure proper connectivity. Through this process, I developed a deep understanding of PCB design principles and techniques.

In addition to the analog modules, I also ventured into building a digital module using Arduino. Arduino, an open-source microcontroller platform, provided a flexible and accessible framework for programming and prototyping the digital aspects of the synthesizer. By leveraging Arduino's capabilities, I was able to develop a digital module that could generate and manipulate sound waves, offering a unique and customizable element to the modular synthesizer setup.

Throughout the project, I dedicated significant time and effort to research and experimentation. I explored various circuit designs, studied the fundamentals of audio synthesis, and fine-tuned the modules to achieve the desired sonic characteristics. This iterative process allowed me to refine the modules' functionality and optimize their performance.

The Modular Synthesizer Project was not only a technical endeavor but also a personal journey driven by passion. It offered me an opportunity to explore my creativity and express my musical ideas through the design and construction of the synthesizer modules. The project fostered a deeper understanding of electronic music and the intricate mechanisms behind synthesizers.

By actively engaging in this passion project, I honed my skills in PCB design with KiCad and gained hands-on experience in working with Arduino for digital module development. The Modular Synthesizer Project provided a platform for self-expression, technical growth, and a deeper appreciation for the art of sound synthesis.
""",
  ),
  Project(
    title: "Z80 8-Bit Computer Project (2020) - Passion project",
    description:
        """The Z80 8-Bit Computer Project, undertaken in 2020, was a passion project that allowed me to immerse myself in the world of retro computing and electronics.

The primary objective of the project was to construct an 8-bit computer using a Z80 processor and various peripheral components. The Z80, a popular microprocessor of the time, formed the heart of the computer and provided the computational power needed for the system. Through meticulous wiring and soldering, I assembled the computer, ensuring the proper connection of components such as memory, input/output devices, and control logic.

To enhance the functionality of the computer, I integrated NASCOM BASIC, a programming language and interpreter, which allowed users to write and execute programs. This addition made the computer versatile and capable of performing a wide range of tasks.

During the project, I utilized Arduino and Python as an EPROM (Erasable Programmable Read-Only Memory) programmer. This involved writing custom programs in Python and using an Arduino board to interface with the EPROM chips, enabling the burning of program code onto the memory chips. This process allowed me to experiment with different software configurations, further expanding the capabilities of the computer.

The Z80 8-Bit Computer Project served as an avenue for honing problem-solving skills and fundamental computing knowledge. It required a deep understanding of digital electronics, computer architecture, and low-level programming concepts. Through hands-on experience and research, I gained insights into the inner workings of a computer system and learned how to troubleshoot and debug issues that arose during the construction and programming phases.

This passion project provided an opportunity to immerse myself in the world of vintage computing, exploring the roots of modern technology and gaining a deep appreciation for the evolution of computing systems. It not only allowed me to construct a functional 8-bit computer but also fostered a sense of accomplishment and satisfaction in bringing a retro computing project to life.

In summary, the Z80 8-Bit Computer Project was a passion-driven endeavor that involved building an 8-bit computer using a Z80 processor. The integration of NASCOM BASIC, the utilization of Arduino and Python as an EPROM programmer, and the development of problem-solving skills and fundamental computing knowledge were all integral parts of this project. Ultimately, the project provided a valuable experience in retro computing and an understanding of the foundations of modern computer technology.
""",
  ),
];
