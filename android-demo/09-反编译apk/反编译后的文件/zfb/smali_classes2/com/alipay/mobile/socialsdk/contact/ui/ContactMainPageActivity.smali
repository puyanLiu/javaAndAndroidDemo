.class public Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "ContactMainPageActivity.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;


# static fields
.field public static final TAG_CONTACTMAINPAGE:Ljava/lang/String; = "ContactMainPage"

.field public static final TAG_GROUPMAINPAGE:Ljava/lang/String; = "GroupMainPage"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/support/v4/app/FragmentManager;

.field private c:Z

.field private d:Z

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->d:Z

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->e:Ljava/util/HashMap;

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->f:F

    .line 26
    return-void
.end method


# virtual methods
.method public addFragment(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 4

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->c:Z

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 85
    const-string/jumbo v1, "ContactMainPage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->d:Z

    .line 87
    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment_;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment_;-><init>()V

    .line 88
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment_;->setOpCallback(Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;)V

    .line 89
    if-eqz p2, :cond_2

    .line 90
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment_;->setArguments(Landroid/os/Bundle;)V

    .line 92
    :cond_2
    sget v2, Lcom/alipay/mobile/socialsdk/R$id;->fragmentContainer:I

    invoke-virtual {v0, v2, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 103
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->c:Z

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 93
    :cond_4
    const-string/jumbo v1, "GroupMainPage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->d:Z

    .line 95
    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;-><init>()V

    .line 96
    if-eqz p2, :cond_5

    .line 97
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->setArguments(Landroid/os/Bundle;)V

    .line 99
    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->b:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v3, "ContactMainPage"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 100
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/socialsdk/R$id;->fragmentContainer:I

    invoke-virtual {v2, v3, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method public backFragment()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/high16 v2, 0x42480000    # 50.0f

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->f:F

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 125
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->f:F

    sub-float/2addr v1, v0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->f:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->a:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 130
    :cond_2
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "20000217"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000166"

    const-string/jumbo v3, "20000001"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->fragment_container_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->setContentView(I)V

    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->fragmentContainer:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->a:Landroid/view/View;

    .line 40
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string/jumbo v1, "title"

    const-string/jumbo v2, "\u901a\u4fe1\u5f55"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->b:Landroid/support/v4/app/FragmentManager;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "withMe"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "ContactMainPage"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->addFragment(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 41
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->c:Z

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactMainPageActivity;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 72
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onDestroy()V

    .line 73
    return-void
.end method

.method public selectItem(Ljava/util/List;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
