from website import create_app

app = create_app()

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=5001)
    # move this controling this through docker
    # This so I could run it on other computers in my network
    # will probably remove this
