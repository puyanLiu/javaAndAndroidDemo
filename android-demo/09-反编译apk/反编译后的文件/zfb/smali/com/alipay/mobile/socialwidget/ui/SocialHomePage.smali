.class public Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alipay/android/launcher/core/IFragmentWidgetGroup;
.implements Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "SocialSdk_SocialHomeWidget"

.field private static a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

.field private static d:Landroid/app/Activity;


# instance fields
.field private A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private B:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

.field private G:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

.field private H:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

.field private I:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$TimelineDataObserver;

.field private J:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$OwnerInfoChangeListener;

.field private K:Z

.field private L:Z

.field private M:Landroid/app/Dialog;

.field private N:I

.field private O:Z

.field private P:Z

.field private Q:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

.field private R:Landroid/view/View;

.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private c:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

.field private g:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

.field private h:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

.field private i:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

.field private j:Z

.field private k:Z

.field private l:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

.field private m:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

.field private n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private o:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field private p:Lcom/alipay/mobilerelation/rpc/ScocialPropertiesRpc;

.field private q:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;

.field private r:Landroid/os/HandlerThread;

.field private s:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

.field private t:Landroid/view/View;

.field private u:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private v:Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;

.field private w:Z

.field private x:Landroid/database/Cursor;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Z

    .line 93
    iput-boolean v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Z

    .line 106
    iput-boolean v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->w:Z

    .line 108
    iput v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:I

    .line 109
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->z:I

    .line 114
    iput-boolean v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->E:Z

    .line 132
    sput-object p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    .line 133
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "SocialHomePage\u521b\u5efa"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 136
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/b;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method static synthetic a()Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;Z)V
    .locals 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->q:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->q:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;

    if-eqz p1, :cond_3

    const/16 v0, 0x64

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->B:Ljava/util/HashMap;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->B:Ljava/util/HashMap;

    :goto_1
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->B:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->loadRecentListCursor(ZLjava/util/HashMap;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->x:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j()V

    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->E:Z

    if-nez v0, :cond_1

    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->hasAnyFriends()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->E:Z

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u52a0\u8f7d\u5237\u65b0\u6700\u8fd1\u9875\u9762\u6570\u636e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->x:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-\u672a\u8bfb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Landroid/app/Activity;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->K:Z

    sget-object v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/mobile/socialwidget/ui/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialwidget/ui/d;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :cond_3
    const/16 v0, 0xc8

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->B:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_1
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 453
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u8bf7\u6c42\u5237\u65b0\u670b\u53cbtab"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->r:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->r:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->e()V

    .line 459
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->q:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;

    if-eqz v0, :cond_3

    .line 460
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->q:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;

    if-eqz p1, :cond_2

    const/16 v0, 0x64

    :goto_1
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 464
    :goto_2
    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->r:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 457
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->e()V

    goto :goto_0

    .line 460
    :cond_2
    const/16 v0, 0xc8

    goto :goto_1

    .line 462
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u65e0\u6cd5\u5237\u65b0\u670b\u53cbtab,handler\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;Z)V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:I

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->l:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->l:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->m:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->m:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    if-nez v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 292
    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;Z)V
    .locals 0

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->P:Z

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->C:Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c()V

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->i:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;-><init>(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->i:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->i:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->a()V

    .line 315
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u521d\u59cb\u5316\u5237\u65b0\u7ebf\u7a0b"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "socialtabrefresh"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->r:Landroid/os/HandlerThread;

    .line 469
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->r:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 470
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->r:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->q:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;

    .line 471
    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 0

    .prologue
    .line 809
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k()V

    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 503
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->x:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->x:Landroid/database/Cursor;

    .line 506
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->i()V

    .line 507
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->x:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->B:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Landroid/database/Cursor;Ljava/util/HashMap;)V

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->u:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    if-eqz v0, :cond_2

    .line 511
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->u:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->E:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 513
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->K:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->L:Z

    if-eqz v0, :cond_3

    .line 514
    iput-boolean v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->K:Z

    .line 515
    iput-boolean v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->L:Z

    .line 516
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v1, "LINK_SOCIAL"

    .line 517
    const-string/jumbo v2, "PHASE_SOCIAL_LAUNCH"

    .line 516
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)J

    .line 519
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 511
    goto :goto_0
.end method

.method static synthetic f(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 0

    .prologue
    .line 664
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->i()V

    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 522
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 523
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->queryTotalUnread()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:I

    .line 524
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->C:Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;

    if-eqz v0, :cond_0

    .line 525
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:I

    if-lez v0, :cond_3

    .line 526
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:I

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->C:Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;

    iget v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->leftUnread:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:I

    .line 539
    :cond_0
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->Q:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.android.phone.socialunread"

    invoke-static {v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->Q:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->D:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alipay/mobile/socialwidget/util/BaseHelperUtil;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->D:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->Q:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unread_num_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putInt(Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->Q:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 540
    sget-object v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/mobile/socialwidget/ui/e;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialwidget/ui/e;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 546
    return-void

    .line 527
    :cond_3
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:I

    if-nez v0, :cond_5

    .line 528
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->C:Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;

    iget v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->leftUnread:I

    if-lez v0, :cond_4

    .line 529
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:I

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->C:Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;

    iget v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->leftUnread:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:I

    goto :goto_0

    .line 530
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->C:Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;

    iget v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->rightUnread:I

    if-lez v0, :cond_0

    .line 531
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:I

    goto :goto_0

    .line 534
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->C:Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;

    iget v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->leftUnread:I

    if-lez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->C:Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;

    iget v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->leftUnread:I

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:I

    goto :goto_0

    .line 539
    :cond_6
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:I

    goto :goto_1
.end method

.method static synthetic g(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 0

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j()V

    return-void
.end method

.method static synthetic h(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    return-object v0
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 564
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->M:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 565
    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->M:Landroid/app/Dialog;

    .line 566
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->M:Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 568
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->M:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 569
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->M:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 570
    sget-object v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialwidget/R$layout;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 571
    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->C:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 572
    sget v2, Lcom/alipay/mobile/socialwidget/R$id;->d:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 573
    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->M:Landroid/app/Dialog;

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 574
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/f;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/f;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/g;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/g;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mShowAgreement = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->N:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mHasShowAgreement = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->O:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mIsRequiringPrc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->P:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->M:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    :cond_1
    :goto_0
    return-void

    .line 610
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->N:I

    if-ne v0, v4, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->O:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->P:Z

    if-nez v0, :cond_1

    .line 611
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/i;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/i;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c()V

    .line 666
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->l:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->getCurrentChatState()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->z:I

    .line 667
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->t:Landroid/view/View;

    if-nez v0, :cond_0

    .line 682
    :goto_0
    return-void

    .line 670
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->z:I

    packed-switch v0, :pswitch_data_0

    .line 676
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u6807\u9898\u670b\u53cb"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 672
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->t:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u6807\u9898\u670b\u53cb-\u4e0d\u53ef\u7528"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 670
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic i(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Z

    return v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 685
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->C:Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->C:Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    invoke-static {}, Lcom/alipay/mobile/socialwidget/util/BaseHelperUtil;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->D:Ljava/lang/String;

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->D:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->C:Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->refreshTimelineEntry(Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;)V

    .line 692
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->v:Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;

    if-nez v0, :cond_2

    .line 693
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u751f\u6d3b\u5708\u5165\u53e3\u66f4\u65b0, View\u8fd8\u6ca1\u6709\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->g()V

    .line 710
    :goto_0
    return-void

    .line 697
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k()V

    .line 699
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u751f\u6d3b\u5708\u5165\u53e3\u66f4\u65b0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->C:Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c()V

    .line 701
    sget-object v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/mobile/socialwidget/ui/k;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialwidget/ui/k;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 709
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->g()V

    goto :goto_0
.end method

.method static synthetic j(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c()V

    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 810
    sget-object v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Landroid/app/Activity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->f:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->f:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 812
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 813
    check-cast v0, Landroid/app/Activity;

    sput-object v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Landroid/app/Activity;

    .line 814
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u9875\u9762Context\u4e22\u5931, \u91cd\u65b0\u751f\u6210"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->f()V

    return-void
.end method

.method static synthetic l(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 3

    .prologue
    .line 654
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->s:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->s:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    sget-object v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->POINT:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->s:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    sget-object v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->NUM:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    iget v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->p:Lcom/alipay/mobilerelation/rpc/ScocialPropertiesRpc;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilerelation/rpc/ScocialPropertiesRpc;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/rpc/ScocialPropertiesRpc;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->p:Lcom/alipay/mobilerelation/rpc/ScocialPropertiesRpc;

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobilerelation/rpc/ScocialPropertiesRpc;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->p:Lcom/alipay/mobilerelation/rpc/ScocialPropertiesRpc;

    return-object v0
.end method

.method static synthetic o(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "social_widget_has_show_agreement_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    iput-boolean v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->O:Z

    return-void
.end method

.method static synthetic p(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->M:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic q(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->v:Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;

    return-object v0
.end method

.method static synthetic r(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    return-object v0
.end method


# virtual methods
.method public cleanSocialChatPush()V
    .locals 4

    .prologue
    .line 713
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 714
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 713
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 715
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.eg.android.AlipayGphone.push.action.SYNC_PUSH_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 716
    const-string/jumbo v2, "op_type"

    const-string/jumbo v3, "removeBizMsg"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    const-string/jumbo v2, "bizId"

    const-string/jumbo v3, "chat"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 719
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->r:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->r:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->i:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->i:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->b()V

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    if-eqz v0, :cond_5

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    if-eqz v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->unregisterContentObserver(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->G:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    if-eqz v0, :cond_3

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->G:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->unregisterContentObserver(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 342
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->H:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

    if-eqz v0, :cond_4

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->H:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->unregisterContentObserver(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 345
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->I:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$TimelineDataObserver;

    if-eqz v0, :cond_5

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->I:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$TimelineDataObserver;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->unregisterContentObserver(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 350
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_6

    .line 352
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->J:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$OwnerInfoChangeListener;

    if-eqz v1, :cond_6

    .line 353
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->J:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$OwnerInfoChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 356
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u9875\u9762Destroy"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public getAllWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBadgeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->s:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 194
    sget-object v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 195
    sget v1, Lcom/alipay/mobile/socialwidget/R$layout;->h:I

    .line 194
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 196
    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->y:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 197
    sget-object v2, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Landroid/app/Activity;

    sget v3, Lcom/alipay/mobile/socialwidget/R$string;->m:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v3

    .line 200
    sget v2, Lcom/alipay/mobile/socialwidget/R$id;->z:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->s:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 201
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->s:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    const-string/jumbo v4, "SocialHomeTab"

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setWidgetId(Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->s:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->registerBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 204
    sget-object v2, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/socialwidget/R$drawable;->q:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 205
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 206
    invoke-virtual {v1, v5, v2, v5, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 208
    new-instance v1, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 209
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->L:Z

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "social_widget_has_show_agreement_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->O:Z

    .line 216
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 217
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 218
    if-eqz v0, :cond_0

    .line 219
    const-string/jumbo v1, "SOCIAL_SERVICE_AGREEMENT"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_SocialHomeWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "configData = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    .line 225
    const-string/jumbo v1, "show_agreement"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->N:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v1, "LINK_SOCIAL"

    const-string/jumbo v2, "PHASE_SOCIAL_LAUNCH"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->f:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    if-nez v0, :cond_1

    .line 236
    sget-object v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialwidget/R$layout;->g:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->f:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->f:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->g:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->f:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->q:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    .line 239
    sget-object v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 240
    sget v1, Lcom/alipay/mobile/socialwidget/R$layout;->e:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 241
    new-instance v2, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;

    sget-object v3, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->v:Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;

    .line 242
    sget v2, Lcom/alipay/mobile/socialwidget/R$layout;->d:I

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->v:Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->o:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->t:Landroid/view/View;

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->t:Landroid/view/View;

    const-string/jumbo v3, "nonetwork"

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->t:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->t:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->h:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->u:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->u:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const-string/jumbo v3, "mobileentry"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setTag(Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->u:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->addHeaderView(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->v:Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->addHeaderView(Landroid/view/View;)V

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->addFooterView(Landroid/view/View;)V

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    sget-object v1, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Landroid/app/Activity;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    .line 255
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->cleanSocialChatPush()V

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->f()V

    .line 258
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/c;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->f:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    return-object v0

    .line 228
    :catch_0
    move-exception v0

    iput v6, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->N:I

    goto/16 :goto_0
.end method

.method public loadEmptyChatApp()V
    .locals 2

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->w:Z

    if-nez v0, :cond_0

    .line 723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->w:Z

    .line 725
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "20000242"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 727
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->v:Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;

    if-ne p1, v0, :cond_1

    .line 362
    const-string/jumbo v0, "20000261"

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/AppLaunchUtil;->a(Ljava/lang/String;)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    const-string/jumbo v1, "nonetwork"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 371
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 372
    const-string/jumbo v2, "com.alipay.mobile.commonbiz.ui.network.diagnose.NetworkDiagnoseActivity"

    .line 371
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto :goto_0

    .line 374
    :cond_2
    const-string/jumbo v1, "mobileentry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 376
    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "actionTypeContactPage"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string/jumbo v1, "20000166"

    invoke-static {v1, v0}, Lcom/alipay/mobile/socialwidget/util/AppLaunchUtil;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public onRefresh()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u9875\u9762Refresh"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d()V

    .line 298
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u9875\u9762Resume"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->cleanSocialChatPush()V

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->g:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    const-string/jumbo v1, "friend_toptips_android"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->updateSpaceCode(Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h()V

    .line 325
    return-void
.end method

.method public onReturn()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u9875\u9762Return"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d()V

    .line 304
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->cleanSocialChatPush()V

    .line 306
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h()V

    .line 307
    return-void
.end method

.method public preSdkRefresh()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 443
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "preSdkRefresh, \u524d\u7f6e\u5c06sdk\u72b6\u6001\u6e05\u6389, \u91cd\u7f6e\u9875\u9762\u4e3a\u7a7a\u6570\u636e"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->x:Landroid/database/Cursor;

    .line 445
    iput v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:I

    .line 447
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->i()V

    .line 448
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->f()V

    .line 449
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "preSdkRefresh done"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public sdkLoaded()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 383
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Z

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "sdk\u5df2\u7ecf\u521d\u59cb\u5316,\u4e0d\u9700\u8981\u518d\u6b21\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "sdkLoaded"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/alipay/mobile/socialwidget/util/BaseHelperUtil;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->D:Ljava/lang/String;

    .line 389
    iput-boolean v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Z

    .line 390
    iput-boolean v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Z

    .line 391
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    .line 392
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 393
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "content://contactsdb/recent_session"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "content://share_lbs_update/lbs"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 395
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    invoke-direct {v0, p0, v3}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->G:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    .line 396
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "content://contactsdb/ali_account"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->G:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "content://contactsdb/chatgroup_info"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->G:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "content://contactsdb/contact_relation/3"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 399
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->G:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    .line 398
    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 401
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c()V

    .line 402
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->l:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->getCurrentChatState()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->z:I

    .line 403
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->H:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "content://chatsyncstate/state"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->H:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 406
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$TimelineDataObserver;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$TimelineDataObserver;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->I:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$TimelineDataObserver;

    .line 407
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "content://contactsdb/timelinetable"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->I:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$TimelineDataObserver;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 409
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->e()V

    .line 412
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 413
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 414
    const-string/jumbo v2, "com.alipay.mobile.LAUNCHER_TAB_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    const-string/jumbo v2, "com.alipay.mobile.LAUNCHER_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    invoke-direct {p0, v3}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a(Z)V

    .line 419
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 420
    const-string/jumbo v2, "com.alipay.mobile.android.main.avatar.action.changed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    const-string/jumbo v2, "com.alipay.mobile.android.main.nickname.action.changed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 422
    new-instance v2, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$OwnerInfoChangeListener;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$OwnerInfoChangeListener;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    iput-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->J:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$OwnerInfoChangeListener;

    .line 423
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->J:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$OwnerInfoChangeListener;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto/16 :goto_0
.end method

.method public sdkRefreshed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 428
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c()V

    .line 429
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "sdkRefreshed"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lcom/alipay/mobile/socialwidget/util/BaseHelperUtil;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->D:Ljava/lang/String;

    .line 431
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Z

    if-eqz v0, :cond_0

    .line 432
    iput-boolean v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Z

    .line 433
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->l:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->getCurrentChatState()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->z:I

    .line 434
    invoke-direct {p0, v3}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a(Z)V

    .line 439
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "sdk\u8fd8\u6ca1\u521d\u59cb\u5316\u8fc7, \u8c03\u7528load"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->sdkLoaded()V

    goto :goto_0
.end method

.method public setActApplication(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 180
    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 154
    .line 155
    sput-object p1, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Landroid/app/Activity;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->R:Landroid/view/View;

    if-nez v0, :cond_0

    .line 157
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 158
    sget v1, Lcom/alipay/mobile/socialwidget/R$layout;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->R:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_SocialHomeWidget"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 147
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d()V

    .line 148
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->e:Ljava/lang/String;

    .line 175
    return-void
.end method
