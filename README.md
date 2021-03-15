**Flutter App Development Workflow**

_Design Pattern_

- Repository Pattern

  - UI

  - Logic / BLoC

  - ServiceProvider

  - RepositoryInterface

  - Repository

  - ServiceInterface

  - Service

  - DataAccessLayer / API

1.  **Business Logic Component / BLoC**

> Represents State. BLoC gets in construct method the
> RepositoryInterface

2.  **ServiceProvider**

> Register all of the needed bootstrappers

3.  **RepositoryInterface**

> Defines all of the methods to work with by simply implementation of
> classes

4.  **Repository**

> Implements from RepositoryInterface. Use methods referring necessary
methods of ServiceInterface

5.  **ServiceInterface**

> Defines all of the methods to work with by simply implementation of
classes

6.  **Service**

> Implements from ServiceInterface. Use methods referring necessary
methods of ServiceInterface

7.  **Data Access Layer / API**

> External layer of Data

_File structure and modularization_

- Layered structure

**Pros** **Cons**

---

It aligns layered architecture of the application with its structure. Simple to extend; very little nesting Many files in a given folder; files relating to one feature are split over multiple locations

**Modularization**

Modularization in the context of software development refers to the
separation of a system into largely independent components that
communicate with each other through strictly defined interfaces. Each
component of such a system is then responsible for a specific aspect of
that application. For example, one component could handle user
authentication and another component could be responsible for data
visualization and so on.

**Advantages of Modularization**

1.  Smaller components are easier to maintain

2.  Components can be re-used

3.  Because components are largely independent, they can be developed by
    separate development teams

4.  The program can be devided based on its functional aspects

> Module: Example of package

_Form Validation_

- BLoC Validation Package


| **Pros** | **Cons** |

1\. Validation no longer takes | More complex than Flutter's |
| place in UI. | inbuilt version 

| 2\. Form Field BloCs can easily be reused for multiple From Fields.
| 3\. This approach adheres the architecture described above as state changes and business logic are now contained inside of  BLoCs. 


_Localization_

- Flutter built-in approach
