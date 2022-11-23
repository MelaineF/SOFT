# SOFT
## Multilanguage

Creating multilingual texts requires several steps. :
Creation of translations under [Loco]:
> Warning: an asset name must start with a lowercase letter then the rest in camel case
```sh
login : soft.company.marketplace@gmail.com
mdp : Soft!2020
```
- For each translation, create an "asset" with its translation in English and French, then save.

Import translations from Loco and generate them :
- In a terminal at the root of the project, enter and validate
```sh
./intl.sh
```
Example of using a translation with a Text Widget:a
- Text(`AppLocalizations.of(context)!.nameOfAsset`,),


[Loco]: <https://localise.biz/soft-company-marketplace/soft#!l=2&a=637dcf60c9449a09785af522>