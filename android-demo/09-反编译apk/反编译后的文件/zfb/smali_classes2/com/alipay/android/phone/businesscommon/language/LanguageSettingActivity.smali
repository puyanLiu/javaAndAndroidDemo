.class public Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private c:Lcom/alipay/mobile/commonui/widget/APListView;

.field private d:Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;

.field private e:Lcom/alipay/mobile/commonui/widget/APButton;

.field private f:I

.field private g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->d:Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;

    return-void
.end method

.method static synthetic a(I)I
    .locals 1

    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic a()V
    .locals 3

    const-string/jumbo v0, "UC-language-150924"

    const-string/jumbo v1, "language"

    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getInstance()Lcom/alipay/mobile/framework/locale/LocaleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAlipayLocaleDes()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/utils/LocaleSeedUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;)Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->d:Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->finish()V

    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->requestWindowFeature(I)Z

    sget v0, Lcom/alipay/android/phone/businesscommon/language/R$layout;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->setContentView(I)V

    sget v0, Lcom/alipay/android/phone/businesscommon/language/R$id;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/android/phone/businesscommon/language/R$id;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->c:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->d:Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/businesscommon/language/R$array;->a:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->g:[Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->g:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_2

    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getInstance()Lcom/alipay/mobile/framework/locale/LocaleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getCurrentLanguage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->f:I

    new-instance v0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;

    iget v3, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->f:I

    iget-object v4, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILcom/alipay/mobile/commonui/widget/APButton;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->d:Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->c:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->d:Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->f:I

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->d:Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;

    invoke-virtual {v2}, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->a()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/android/phone/businesscommon/language/c;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/language/c;-><init>(Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->g:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->isBrought2Foreground()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->destroy(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
