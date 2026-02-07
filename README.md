# Robot Framework - UI Test Automation

## 🚀 Installation

### System Requirements

- Python 3.x
- Google Chrome Browser
- ChromeDriver (for Selenium)

### Installation Steps

1. Clone the repository or download the project

2. Create a Virtual Environment:

```bash
python -m venv venv
```

3. Install dependencies:

```bash
pip install -r requirements.txt
```

4. Activate the Virtual Environment:

```bash
source venv/bin/activate
```

## ⚙️ Environment Configuration

Edit the files in `config/env/` according to the environment you want to use:

```yaml
URL: "https://www.facebook.com"
BROWSER: "chrome"
GLOBAL_TIMEOUT: 10
```

## 🧪 Running Tests

### Run with Desired Environment

**UAT Environment:**

```bash
robot --outputdir results -v lang:en -v env:uat tests/facebookMainPage.robot
```

**SIT Environment:**

```bash
robot --outputdir results -v lang:en -v env:sit tests/facebookMainPage.robot
```

**Production Environment:**

```bash
robot --outputdir results -v lang:en -v env:prod tests/facebookMainPage.robot
```

## 📖 Page Object Model

This project uses the Page Object Model pattern for organized and maintainable code:

- **Pages** (`fixtures/pages/`) - Contains keywords for each page
- **Locators** (`fixtures/locators/`) - Stores CSS/XPath selectors
- **Localization** (`fixtures/localization/`) - Stores multilingual text
- **Test Data** (`fixtures/testData/`) - Stores test data
