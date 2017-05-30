Adam Zaninovich [10:46 AM]
MRI can do multiple threads

[10:46]
as many as you want

[10:46]
we had to use a pool because we were creating too many threads

[10:47]
there is a difference between ruby threads and OS threads

[10:48]
the amount of ruby threads you can make are only limited by memory

[10:48]
MRI can only run on a single OS thread

[10:48]
(hence no parallelism in MRI)

[10:49]
but ruby threads can run while others are waiting

[10:49]
(concurrency)

[10:51]
so computationally bound problems can't be sped up with MRI because it can't do parallelism

[10:51]
but IO bound ones can because you can use multiple Ruby threads to do things while other threads wait.
