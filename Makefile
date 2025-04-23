TARGET = main
TEMP_DIR = temp

all:
	mkdir -p $(TEMP_DIR)
	xelatex -output-directory=$(TEMP_DIR) $(TARGET).tex
	mv $(TEMP_DIR)/$(TARGET).pdf ./

clean:
	rm -rf $(TEMP_DIR)

purge: clean
	rm -f $(TARGET).pdf
