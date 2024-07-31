class Film:
    def __init__(self, data):
        self.id = data[0]
        self.title = data[1]
        self.release_year = data[2]
        self.description = data[3]

    def __str__(self):
        return f"{self.title} {self.release_year}"
