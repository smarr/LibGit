all: image test

libgit.image: latest.image
	$(NBCOG) -headless $< config http://smalltalkhub.com/mc/StefanMarr/LibGit/main ConfigurationOfLibGit --install=bleedingEdge
	mv latest.image   libgit.image
	mv latest.changes libgit.changes

LibGit-Core-Tests-Test.xml: libgit.image
	$(NBCOG) -headless $< test --junit-xml-output LibGit-Core-Tests

image: libgit.image

test: LibGit-Core-Tests-Test.xml
	cat $<
