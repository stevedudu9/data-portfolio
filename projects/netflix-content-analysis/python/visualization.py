"""Create the charts used in the Netflix content analysis README."""

from pathlib import Path

import matplotlib.pyplot as plt
import pandas as pd


PROJECT_DIR = Path(__file__).resolve().parents[1]
DATA_PATH = PROJECT_DIR / "data" / "netflix_titles.csv"
IMAGE_DIR = PROJECT_DIR / "images"


def save_bar_chart(series: pd.Series, title: str, ylabel: str, filename: str) -> None:
    """Render and save a consistently styled bar chart."""
    figure, axis = plt.subplots(figsize=(10, 6))
    series.plot(kind="bar", ax=axis, color="#2563eb")
    axis.set_title(title)
    axis.set_xlabel("")
    axis.set_ylabel(ylabel)
    axis.tick_params(axis="x", rotation=45)
    figure.tight_layout()
    figure.savefig(IMAGE_DIR / filename, dpi=150)
    plt.close(figure)


def main() -> None:
    """Load the catalogue and generate the three portfolio charts."""
    IMAGE_DIR.mkdir(exist_ok=True)
    netflix = pd.read_csv(DATA_PATH)

    save_bar_chart(
        netflix["type"].value_counts(),
        "Netflix titles by content type",
        "Number of titles",
        "content-type-distribution.png",
    )
    save_bar_chart(
        netflix["country"].dropna().value_counts().head(10),
        "Top 10 country fields in the Netflix catalogue",
        "Number of titles",
        "top-countries.png",
    )
    save_bar_chart(
        netflix["rating"].dropna().value_counts(),
        "Netflix titles by rating",
        "Number of titles",
        "ratings-distribution.png",
    )

    print(f"Generated charts from {len(netflix):,} titles in {IMAGE_DIR}")


if __name__ == "__main__":
    main()
