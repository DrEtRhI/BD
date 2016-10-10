select noCage, fonction from zoo.LesCages
minus
select noCage, fonction from zoo.LesAnimaux natural join zoo.LesCages;
