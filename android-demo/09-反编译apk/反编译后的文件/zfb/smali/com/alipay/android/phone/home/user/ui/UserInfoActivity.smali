.class public Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "UserInfoActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "user_info"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "action_bar"
    .end annotation
.end field

.field protected b:Lcom/alipay/android/phone/home/user/ui/UserContainer;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "user_container"
    .end annotation
.end field

.field protected c:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "logout"
    .end annotation
.end field

.field protected d:Lcom/alipay/android/phone/home/user/ui/UserTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "user_info_detail"
    .end annotation
.end field

.field protected e:Lcom/alipay/android/phone/home/user/ui/UserTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "member_detail"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private final g:Ljava/lang/String;

.field private h:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private i:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/alipay/mobile/commonbiz/image/ImageWorker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    .line 57
    const-class v0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->g:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->j:Ljava/util/List;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->i:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 220
    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    new-instance v1, Lcom/alipay/android/phone/home/user/ui/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/home/user/ui/c;-><init>(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)V
    .locals 4

    .prologue
    .line 317
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/android/phone/home/user/ui/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/user/ui/g;-><init>(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 83
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    .line 85
    const/high16 v2, 0x1000000

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    new-instance v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->k:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 93
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getTitlebarBg()Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$color;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setBackgroundResource(I)V

    .line 94
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/openplatform/R$drawable;->p:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    .line 95
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/android/phone/home/user/ui/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/user/ui/a;-><init>(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->d:Lcom/alipay/android/phone/home/user/ui/UserTableView;

    const-string/jumbo v1, "20000057"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->setAppId(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->d:Lcom/alipay/android/phone/home/user/ui/UserTableView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->getIconView()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 109
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->e:Lcom/alipay/android/phone/home/user/ui/UserTableView;

    const-string/jumbo v1, "20000160"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->setAppId(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->e:Lcom/alipay/android/phone/home/user/ui/UserTableView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->getRedFlag()Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    move-result-object v0

    const-string/jumbo v1, "50000081"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setWidgetId(Ljava/lang/String;)V

    .line 113
    invoke-static {p0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->e:Lcom/alipay/android/phone/home/user/ui/UserTableView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->getRedFlag()Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->registerBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 115
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->e:Lcom/alipay/android/phone/home/user/ui/UserTableView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->getIconView()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->e:Lcom/alipay/android/phone/home/user/ui/UserTableView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->getIconView()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$drawable;->h:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->ak:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/user/ui/UserContainer;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->b:Lcom/alipay/android/phone/home/user/ui/UserContainer;

    .line 119
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 120
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 119
    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 121
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 122
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 121
    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->i:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 123
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->i:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    const-string/jumbo v1, "userInfo"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getUserAppsFromLocal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "userInfo.list.size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->b:Lcom/alipay/android/phone/home/user/ui/UserContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/user/ui/UserContainer;->setShowIcon(Z)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->b:Lcom/alipay/android/phone/home/user/ui/UserContainer;

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/user/ui/UserContainer;->setUserAppList(Ljava/util/List;)V

    .line 124
    return-void

    .line 88
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->g:Ljava/lang/String;

    const-string/jumbo v2, "\u786c\u4ef6\u52a0\u901f error"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 2
    .annotation build Lcom/alipay/android/phone/androidannotations/annotations/AlipayNeedPermissions;
        permission = "android.permission.MANAGE_ACCOUNTS"
    .end annotation

    .prologue
    .line 336
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 337
    new-instance v1, Lcom/alipay/android/phone/home/user/ui/h;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/user/ui/h;-><init>(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
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
    .locals 2

    .prologue
    .line 248
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onDestroy()V

    .line 249
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->e:Lcom/alipay/android/phone/home/user/ui/UserTableView;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->e:Lcom/alipay/android/phone/home/user/ui/UserTableView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->getRedFlag()Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {p0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->e:Lcom/alipay/android/phone/home/user/ui/UserTableView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->getRedFlag()Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->unRegisterBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 254
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 10

    .prologue
    const/16 v9, 0xa0

    const/4 v8, 0x0

    .line 241
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onStart()V

    .line 242
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->g:Ljava/lang/String;

    const-string/jumbo v2, "UserInfoActivity authService is null,finish the bundle 20000247"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->finish()V

    .line 243
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->g:Ljava/lang/String;

    const-string/jumbo v2, "refreshUserAppsData"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->i:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->g:Ljava/lang/String;

    const-string/jumbo v2, "refreshUserAppsData() return"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_1
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->g:Ljava/lang/String;

    const-string/jumbo v2, "UserInfoActivity userInfo is null, finish the bundle 20000247"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->finish()V

    goto :goto_0

    :cond_2
    if-nez v4, :cond_5

    const-string/jumbo v0, ""

    move-object v3, v0

    :goto_2
    if-nez v4, :cond_6

    const-string/jumbo v0, ""

    move-object v2, v0

    :goto_3
    if-nez v4, :cond_7

    const-string/jumbo v0, ""

    move-object v1, v0

    :goto_4
    if-nez v4, :cond_8

    const-string/jumbo v0, ""

    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v0, "null"

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->g:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "refreshUserData----userInfo = [showNick:]"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "],[showcustomerType:]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "],[showAvatar:]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->k:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    new-instance v5, Lcom/alipay/android/phone/home/user/ui/b;

    invoke-direct {v5, p0}, Lcom/alipay/android/phone/home/user/ui/b;-><init>(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)V

    invoke-virtual {v4, v1, v5, v9, v9}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;II)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    :goto_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->d:Lcom/alipay/android/phone/home/user/ui/UserTableView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->getInsertView()Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    :cond_4
    :goto_7
    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->e:Lcom/alipay/android/phone/home/user/ui/UserTableView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->getInsertView()Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/alipay/android/phone/home/user/ui/MemberGradeEnum;->a(Ljava/lang/String;)Lcom/alipay/android/phone/home/user/ui/MemberGradeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/user/ui/MemberGradeEnum;->e:Lcom/alipay/android/phone/home/user/ui/MemberGradeEnum;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->e:Lcom/alipay/android/phone/home/user/ui/UserTableView;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$string;->K:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->setRightText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getCustomerType()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getNick()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMemberGrade()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_9
    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v4, Lcom/alipay/android/phone/openplatform/R$drawable;->o:I

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_6

    :cond_a
    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->d:Lcom/alipay/android/phone/home/user/ui/UserTableView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->getInsertView()Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->d:Lcom/alipay/android/phone/home/user/ui/UserTableView;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/openplatform/R$string;->J:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->setRightText(Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->e:Lcom/alipay/android/phone/home/user/ui/UserTableView;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/user/ui/MemberGradeEnum;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->setRightText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    :cond_c
    new-instance v0, Lcom/alipay/android/phone/home/user/ui/d;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/user/ui/d;-><init>(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/user/ui/d;->start()V

    goto/16 :goto_1
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
