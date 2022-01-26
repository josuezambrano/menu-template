<div align="center">
  <h1>Menu template VTEX </h1>
  <strong>⚡️ Build a menu fastly ⚡️</strong>
</div>


## 🚀 Installation

Using wget:

```bash
bash <(wget -qO- https://raw.githubusercontent.com/josuezambrano/menu-template/HEAD/build.sh)
```

Or using curl:

```bash
bash <(curl -s https://raw.githubusercontent.com/josuezambrano/menu-template/HEAD/build.sh)
```

## 💻 Usage

### Blocks

- Mobile:
```bash
{
  "header-layout.mobile": {
    "children": ["sticky-layout#1-mobile"]
  },
  "sticky-layout#1-mobile": {
    "children": ["flex-layout.row#1-mobile"]
  },
  "flex-layout.row#1-mobile": {
    "children": [
      "drawer#unleashed-menu-mobile", # <- Block mobile
      "logo#mobile",
      "flex-layout.col#spacer",
      ....

}
```

- Desktop:
```bash
 "flex-layout.row#4-desktop": {
    "props": {
      "blockClass": "main-header",
      "horizontalAlign": "center",
      "verticalAlign": "center",
      "preventHorizontalStretch": true,
      "preventVerticalStretch": true,
      "fullWidth": true
    },
    "children": [
      "flex-layout.col#logo-desktop",
      "menu#unleashed-menu-desktop", # <- Block desktop
      "flex-layout.col#spacer",
      "search-bar",
      "locale-switcher",
      ....
}

```



### 🛠️ Understanding folder structure

```bash
├── 📁 menu-unleashed 
   ├── 📁 menu-desktop 
   │   ├── 📁 departments
   │   │   ├── 📁 categories
   │   │   │   ├── categories.jsonc # Definition of categories and disposition-layout
   │   │   │   └── subcategories.jsonc # Definition of subcategories and disposition-layout
   │   │   └── departments.jsonc # Definition of departments
   │   └── menu-desktop.jsonc # Definition of component and disposition-layout with departments
   └── 📁 menu-mobile
       ├── 📁 departments
       │   ├── 📁 categories
       │   │   ├── categories-with-subcategories.jsonc # Definition of categories (categories with drawer and subcategories)
       │   │   ├── categories.jsonc # Definition of categories (without subcategories only button)
       │   │   └── subcategories.jsonc # Definition of subcategories and disposition-layout with subcategories
       │   └── departments.jsonc # Definition of departments and disposition-layout with categories
       └── menu-mobile.jsonc # Definition of component and disposition-layout with departments
```