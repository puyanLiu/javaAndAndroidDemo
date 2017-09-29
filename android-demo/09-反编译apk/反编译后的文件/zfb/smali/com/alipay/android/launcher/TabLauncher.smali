.class public Lcom/alipay/android/launcher/TabLauncher;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "TabLauncher.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;
.implements Lcom/alipay/android/launcher/core/ILauncher;
.implements Lcom/alipay/mobile/nfc/NFCResponsable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final CATCH_CAT_APPID_FIX:Ljava/lang/String; = "CATCH_CAT_APPID_FIX"

.field private static final CATCH_CAT_APPID_FIX_DATA:Ljava/lang/String; = "CATCH_CAT_APPID_FIX_DATA"

.field public static final TAG:Ljava/lang/String; = "TabLauncher"

.field private static isDestroyed:Z


# instance fields
.field private badgeCountGetter:Lcom/alipay/android/launcher/badge/BadgeCountGetter;

.field private billStarted:Z

.field private final idMaps:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isGotDefaultOnclickListener:Z

.field private isOnCreate:Z

.field private lastTab:Ljava/lang/String;

.field private final loginCaseId:Ljava/lang/String;

.field private final loginSeedID:Ljava/lang/String;

.field private mAccountService:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private final mHandler:Landroid/os/Handler;

.field private mHomeButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mLauncherServiceThread:Ljava/lang/Thread;

.field private mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private mXmlWidgetFactory:Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;

.field private tabHost:Landroid/widget/TabHost;

.field private tabWidget:Landroid/widget/TabWidget;

.field private tipsForUninstallOldClient:Z

.field private titlebar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private widgetGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidgetGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/launcher/TabLauncher;->isDestroyed:Z

    .line 126
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mHandler:Landroid/os/Handler;

    .line 147
    const-string/jumbo v0, "alipayHome"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->lastTab:Ljava/lang/String;

    .line 153
    iput-boolean v2, p0, Lcom/alipay/android/launcher/TabLauncher;->billStarted:Z

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tipsForUninstallOldClient:Z

    .line 163
    iput-boolean v2, p0, Lcom/alipay/android/launcher/TabLauncher;->isOnCreate:Z

    .line 169
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/launcher/TabLauncher$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/launcher/TabLauncher$1;-><init>(Lcom/alipay/android/launcher/TabLauncher;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mLauncherServiceThread:Ljava/lang/Thread;

    .line 183
    const-string/jumbo v0, "UC-ZHAQ-56"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->loginCaseId:Ljava/lang/String;

    .line 184
    const-string/jumbo v0, "loginTrace"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->loginSeedID:Ljava/lang/String;

    .line 187
    iput-object v3, p0, Lcom/alipay/android/launcher/TabLauncher;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 191
    iput-object v3, p0, Lcom/alipay/android/launcher/TabLauncher;->mHomeButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->idMaps:Ljava/util/Map;

    .line 197
    iput-boolean v2, p0, Lcom/alipay/android/launcher/TabLauncher;->isGotDefaultOnclickListener:Z

    .line 126
    return-void
.end method

.method private _onTabChanged(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v2, 0x0

    .line 904
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TabLauncher"

    const-string/jumbo v3, "_onTabChanged"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/android/launcher/TabLauncherApp;

    if-nez v0, :cond_1

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/launcher/TabLauncher;->isOnCreate:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "20000002"

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->findWidgetGroupById(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;

    move-result-object v0

    .line 912
    if-eqz v0, :cond_2

    .line 913
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v3

    .line 914
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 913
    invoke-virtual {v1, v3, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->leaveView(Landroid/view/View;Ljava/lang/String;)V

    .line 918
    :cond_2
    const-string/jumbo v0, "20000002"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 919
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 920
    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "tabbar"

    .line 921
    const-string/jumbo v6, "alipayHome"

    iget-object v7, p0, Lcom/alipay/android/launcher/TabLauncher;->lastTab:Ljava/lang/String;

    const-string/jumbo v8, "alipay"

    move-object v3, v2

    move-object v5, v2

    .line 919
    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const-string/jumbo v0, "alipayHome"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->lastTab:Ljava/lang/String;

    .line 923
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->titlebar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getLeftSwitchContainer()Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 924
    const-string/jumbo v0, "\u652f\u4ed8\u5b9d"

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->setTitle(Ljava/lang/CharSequence;)V

    .line 948
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 951
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "subappStart"

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 953
    invoke-virtual {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->findWidgetGroupById(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;

    move-result-object v0

    .line 954
    if-eqz v0, :cond_4

    .line 955
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v2

    .line 956
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, p0, Lcom/alipay/android/launcher/TabLauncher;->isOnCreate:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "20000002"

    .line 955
    :goto_3
    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->enterView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->findWidgetGroupById(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;

    move-result-object v0

    .line 960
    if-eqz v0, :cond_5

    .line 961
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->onResume()V

    .line 964
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/launcher/TabLauncher$8;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/launcher/TabLauncher$8;-><init>(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/String;)V

    .line 969
    const-wide/16 v2, 0xc8

    .line 964
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 970
    iget-boolean v0, p0, Lcom/alipay/android/launcher/TabLauncher;->isOnCreate:Z

    if-nez v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/android/launcher/TabLauncherApp;

    invoke-virtual {v0, p1}, Lcom/alipay/android/launcher/TabLauncherApp;->setTabId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 911
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/android/launcher/TabLauncherApp;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/TabLauncherApp;->getTabId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 925
    :cond_7
    const-string/jumbo v0, "20000238"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 926
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 927
    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "tabbar"

    .line 928
    const-string/jumbo v6, "o2oHome"

    iget-object v7, p0, Lcom/alipay/android/launcher/TabLauncher;->lastTab:Ljava/lang/String;

    const-string/jumbo v8, "service"

    move-object v3, v2

    move-object v5, v2

    .line 926
    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string/jumbo v0, "o2oHome"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->lastTab:Ljava/lang/String;

    .line 930
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->titlebar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getLeftSwitchContainer()Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 931
    const-string/jumbo v0, "\u5546\u6237"

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 932
    :cond_8
    const-string/jumbo v0, "20000217"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 933
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 934
    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "tabbar"

    .line 935
    const-string/jumbo v6, "socialHome"

    iget-object v7, p0, Lcom/alipay/android/launcher/TabLauncher;->lastTab:Ljava/lang/String;

    const-string/jumbo v8, "explore"

    move-object v3, v2

    move-object v5, v2

    .line 933
    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const-string/jumbo v0, "socialHome"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->lastTab:Ljava/lang/String;

    .line 937
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->titlebar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getLeftSwitchContainer()Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 938
    const-string/jumbo v0, "\u670b\u53cb"

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 939
    :cond_9
    const-string/jumbo v0, "20000004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 940
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 941
    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "tabbar"

    .line 942
    const-string/jumbo v6, "wealthHome"

    iget-object v7, p0, Lcom/alipay/android/launcher/TabLauncher;->lastTab:Ljava/lang/String;

    const-string/jumbo v8, "wealth"

    move-object v3, v2

    move-object v5, v2

    .line 940
    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string/jumbo v0, "wealthHome"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->lastTab:Ljava/lang/String;

    .line 944
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->titlebar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getLeftSwitchContainer()Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 945
    const-string/jumbo v0, "\u8d22\u5bcc"

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 956
    :cond_a
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/android/launcher/TabLauncherApp;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/TabLauncherApp;->getTabId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3
.end method

.method static synthetic access$10(Lcom/alipay/android/launcher/TabLauncher;)Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mXmlWidgetFactory:Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;

    return-object v0
.end method

.method static synthetic access$11(Lcom/alipay/android/launcher/TabLauncher;)V
    .locals 0

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->setupBadge()V

    return-void
.end method

.method static synthetic access$12(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 888
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/launcher/TabLauncher;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 903
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->_onTabChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14(Lcom/alipay/android/launcher/TabLauncher;Landroid/net/Uri;Z)V
    .locals 0

    .prologue
    .line 1158
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/launcher/TabLauncher;->processGestureCallBack(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$15(Lcom/alipay/android/launcher/TabLauncher;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic access$5()Z
    .locals 1

    .prologue
    .line 168
    sget-boolean v0, Lcom/alipay/android/launcher/TabLauncher;->isDestroyed:Z

    return v0
.end method

.method static synthetic access$6(Lcom/alipay/android/launcher/TabLauncher;)Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alipay/android/launcher/TabLauncher;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->idMaps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 865
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->handleOnResume(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/alipay/android/launcher/TabLauncher;)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->initTab()V

    return-void
.end method

.method private appTransfer(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 559
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "20000001"

    invoke-interface {v0, v1, p1, p2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    .line 563
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TabLauncher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private attachTab()V
    .locals 6

    .prologue
    .line 425
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 463
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidgetGroup;

    .line 427
    if-eqz v0, :cond_3

    .line 428
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/launcher/core/IWidgetGroup;->setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 431
    invoke-interface {v0, p0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->setContext(Landroid/app/Activity;)V

    .line 432
    instance-of v1, v0, Lcom/alipay/android/launcher/core/IFragmentWidgetGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 433
    check-cast v1, Lcom/alipay/android/launcher/core/IFragmentWidgetGroup;

    iget-object v3, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v3}, Lcom/alipay/android/launcher/core/IFragmentWidgetGroup;->setActApplication(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 438
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getIndicator()Landroid/view/View;

    move-result-object v3

    .line 440
    sget v4, Lcom/alipay/mobile/ui/R$id;->performance_sdk_monitor_key:I

    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 441
    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 443
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getBadgeView()Landroid/view/View;

    move-result-object v0

    .line 444
    instance-of v4, v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    if-eqz v4, :cond_2

    .line 445
    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    new-instance v4, Lcom/alipay/android/launcher/TabLauncher$6;

    invoke-direct {v4, p0}, Lcom/alipay/android/launcher/TabLauncher$6;-><init>(Lcom/alipay/android/launcher/TabLauncher;)V

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setOnBadgeChangeListener(Lcom/alipay/mobile/mpass/badge/ui/BadgeView$OnBadgeChangeListener;)V

    .line 459
    :cond_2
    invoke-virtual {v1, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 460
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 461
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v0}, Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect;->setGestureDetectListener(Landroid/view/View;Landroid/os/Handler;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/launcher/TabLauncher;->isGotDefaultOnclickListener:Z

    .line 425
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private callGestureApp(Landroid/net/Uri;ZZ)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1096
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 1097
    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    .line 1098
    if-nez v0, :cond_0

    move v0, v1

    .line 1149
    :goto_0
    return v0

    .line 1101
    :cond_0
    if-eqz p2, :cond_1

    .line 1102
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedNotifyCallBack(Z)V

    .line 1104
    :cond_1
    new-instance v2, Lcom/alipay/android/launcher/TabLauncher$10;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/android/launcher/TabLauncher$10;-><init>(Lcom/alipay/android/launcher/TabLauncher;Landroid/net/Uri;Z)V

    .line 1110
    if-eqz p3, :cond_2

    .line 1111
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "GestureServiceImpl"

    const-string/jumbo v4, "TabLauncher callGestureApp restoreStateValidateGesture"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->restoreStateValidateGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    move-result v0

    goto :goto_0

    .line 1114
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "GestureServiceImpl"

    const-string/jumbo v5, "TabLauncher callGestureApp validateStartClientGesture"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->isCanPassGesture()Z

    move-result v4

    invoke-virtual {v3, v4, p1, v6}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->gestureStrategyLaunch(ZLandroid/net/Uri;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1117
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "TabLauncher"

    const-string/jumbo v4, "callGestureApp setNeedAuthGesture true"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->setGesturePassFlag()V

    .line 1119
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/launcher/TabLauncher;->processGestureCallBack(Landroid/net/Uri;Z)V

    move v0, v1

    .line 1121
    goto :goto_0

    .line 1122
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedLogin(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1124
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "TabLauncher"

    const-string/jumbo v4, "\u5ba2\u6237\u7aef\u672a\u542f\u52a8\u7684\u60c5\u51b5\u4e0b,2\u79d2\u540e\u5224\u65ad\u4e0b\u767b\u5f55\u72b6\u6001"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/android/launcher/TabLauncher$11;

    invoke-direct {v3, p0}, Lcom/alipay/android/launcher/TabLauncher$11;-><init>(Lcom/alipay/android/launcher/TabLauncher;)V

    .line 1145
    const-wide/16 v4, 0x7d0

    .line 1125
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1146
    const-string/jumbo v3, "UC-HB-D23"

    const-string/jumbo v4, "88888888"

    const-string/jumbo v5, "NeedGesture"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->isCanPassGesture()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "NO"

    :goto_1
    invoke-virtual {p0, v3, v4, v5, v1}, Lcom/alipay/android/launcher/TabLauncher;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    :cond_4
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->validateGestureIfNecessary(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    move-result v0

    goto/16 :goto_0

    .line 1146
    :cond_5
    const-string/jumbo v1, "YES"

    goto :goto_1
.end method

.method private callGestureService(Landroid/net/Uri;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1172
    .line 1173
    if-eqz p1, :cond_1

    move v0, v1

    .line 1177
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 1178
    const-string/jumbo v4, "_share_tmp_"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1177
    const-string/jumbo v4, "@@"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1183
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/android/launcher/TabLauncher;->callGestureApp(Landroid/net/Uri;ZZ)Z

    move-result v0

    return v0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private checkAndFixTopAppidError()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 721
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 722
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    .line 723
    if-eqz v2, :cond_0

    .line 724
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "20000001"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    const-string/jumbo v1, "CATCH_CAT_APPID_FIX"

    invoke-direct {p0, v1}, Lcom/alipay/android/launcher/TabLauncher;->getConfigStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 729
    const-string/jumbo v5, "NO"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 733
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 734
    const-string/jumbo v1, "88886666"

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    const-string/jumbo v1, "CATCH_CAT_APPID_FIX_DATA"

    invoke-direct {p0, v1}, Lcom/alipay/android/launcher/TabLauncher;->getConfigStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 736
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    .line 738
    :try_start_1
    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v1, v3

    .line 739
    :goto_1
    array-length v7, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lt v1, v7, :cond_4

    .line 749
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v3

    .line 756
    :goto_3
    if-eqz v1, :cond_0

    .line 760
    instance-of v1, v2, Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v1, :cond_0

    .line 761
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-object v1, v0

    .line 762
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getActiveActivityCount()I

    move-result v6

    move v5, v3

    .line 764
    :goto_4
    if-lt v5, v6, :cond_7

    move v1, v4

    .line 771
    :goto_5
    if-eqz v1, :cond_0

    .line 772
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "TabLauncher"

    .line 773
    const-string/jumbo v4, "CATCH_CAT_APPID_FIX"

    .line 772
    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 740
    :cond_4
    :try_start_3
    aget-object v7, v6, v1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 741
    aget-object v7, v6, v1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 739
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 749
    :cond_6
    :try_start_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 750
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    .line 752
    goto :goto_3

    .line 765
    :cond_7
    invoke-virtual {v1, v5}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getActivityAt(I)Landroid/app/Activity;

    move-result-object v7

    .line 766
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v7

    if-nez v7, :cond_8

    move v1, v3

    .line 768
    goto :goto_5

    .line 764
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private doChangeFriendTab()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 1348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1349
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->isBrought2Foreground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1350
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TabLauncher"

    const-string/jumbo v2, "!isBrought2Foreground"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    :cond_0
    :goto_0
    return-void

    .line 1353
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1354
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1355
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TabLauncher"

    .line 1356
    const-string/jumbo v2, "doChangeFriendTab uri not null!"

    .line 1355
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1359
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_0

    .line 1363
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "TabLauncher"

    .line 1364
    const-string/jumbo v4, "doChangeFriendTab isLogin true"

    .line 1363
    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    .line 1369
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidgetGroup;

    .line 1368
    if-nez v0, :cond_3

    .line 1371
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TabLauncher"

    const-string/jumbo v2, "widgetGroup is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1374
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->badgeCountGetter:Lcom/alipay/android/launcher/badge/BadgeCountGetter;

    if-nez v0, :cond_4

    .line 1375
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 1376
    const-string/jumbo v1, "TabLauncher"

    const-string/jumbo v2, "badgeCountGetter is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1380
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->badgeCountGetter:Lcom/alipay/android/launcher/badge/BadgeCountGetter;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/badge/BadgeCountGetter;->getFriendTabBadgeCount()I

    move-result v0

    .line 1381
    if-lez v0, :cond_5

    .line 1382
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    .line 1383
    const-string/jumbo v4, "TabLauncher"

    .line 1384
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "doChangeFriendTab count = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "time = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1382
    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v7}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 1391
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "TabLauncher"

    .line 1392
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "changetime = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1391
    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1388
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "TabLauncher"

    .line 1389
    const-string/jumbo v4, "doChangeFriendTab count = 0"

    .line 1388
    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private gestureOnTabChanged(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 978
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TabLauncher"

    const-string/jumbo v2, "gestureOnTabChanged"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 980
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    .line 981
    if-eqz v0, :cond_0

    .line 982
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->gestureStrategyTabLauncher(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 983
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->startGestureIfNecessary(Z)Z

    .line 984
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/launcher/TabLauncher$9;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/launcher/TabLauncher$9;-><init>(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/String;)V

    .line 990
    const-wide/16 v2, 0x1f4

    .line 984
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 994
    :goto_0
    return-void

    .line 992
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->_onTabChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getConfigStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 791
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 793
    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 795
    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 801
    :goto_0
    return-object v0

    .line 799
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 801
    goto :goto_0
.end method

.method private handleOnResume(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 866
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TabLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleOnResume(currentGroupId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    if-nez v0, :cond_1

    .line 878
    :cond_0
    return-void

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidgetGroup;

    .line 871
    if-eqz v0, :cond_2

    .line 872
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 874
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->onReturn()V

    goto :goto_0

    .line 876
    :cond_3
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->onRefresh()V

    goto :goto_0
.end method

.method private handleTabChanged()V
    .locals 4

    .prologue
    .line 808
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/android/launcher/TabLauncherApp;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/TabLauncherApp;->getTabId()Ljava/lang/String;

    move-result-object v1

    .line 809
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 810
    if-nez v0, :cond_0

    .line 842
    :goto_0
    return-void

    .line 816
    :cond_0
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 817
    const-string/jumbo v2, "20000003"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/alipay/android/launcher/TabLauncher;->billStarted:Z

    if-nez v2, :cond_1

    .line 819
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "20000003"

    .line 820
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 819
    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/launcher/TabLauncher;->billStarted:Z
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 822
    :catch_0
    move-exception v0

    .line 823
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TabLauncher"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 828
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 829
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 831
    const/4 v0, 0x0

    .line 834
    :goto_1
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->idMaps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 836
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 839
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "TabLauncher"

    const-string/jumbo v3, "Looper.myQueue().addIdleHandler(new HandleonResumeIdleHandler(tabId))"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v2, Lcom/alipay/android/launcher/TabLauncher$HandleonResumeIdleHandler;

    invoke-direct {v2, p0, v1}, Lcom/alipay/android/launcher/TabLauncher$HandleonResumeIdleHandler;-><init>(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0

    .line 833
    :cond_3
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->idMaps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initTab()V
    .locals 4

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mXmlWidgetFactory:Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->getAllWidgetGroups()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    .line 368
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->idMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 369
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 375
    new-instance v0, Lcom/alipay/android/launcher/TabLauncher$5;

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/launcher/TabLauncher$5;-><init>(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mClassLoader:Ljava/lang/ClassLoader;

    .line 421
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->attachTab()V

    .line 422
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidgetGroup;

    .line 371
    if-eqz v0, :cond_1

    .line 372
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->idMaps:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private initTitleBar()V
    .locals 2

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->titlebar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    if-nez v0, :cond_0

    .line 1405
    :goto_0
    return-void

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->titlebar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->hideBackButton()V

    .line 1401
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->titlebar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getTitleTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 1402
    invoke-static {p0}, Lcom/alipay/android/launcher/title/TitleUtils;->getTitleItemInfo(Landroid/content/Context;)Lcom/alipay/android/launcher/beans/ItemInfo;

    move-result-object v0

    .line 1403
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->titlebar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-static {v0, v1, p0}, Lcom/alipay/android/launcher/title/TitleUtils;->initTitleLeft(Lcom/alipay/android/launcher/beans/ItemInfo;Lcom/alipay/mobile/commonui/widget/APTitleBar;Landroid/content/Context;)V

    .line 1404
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->titlebar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-static {v0, v1, p0}, Lcom/alipay/android/launcher/title/TitleUtils;->initTitleRight(Lcom/alipay/android/launcher/beans/ItemInfo;Lcom/alipay/mobile/commonui/widget/APTitleBar;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private installShortcut()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1219
    invoke-static {}, Lcom/alipay/android/launcher/MIUIUtils;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1255
    :cond_0
    :goto_0
    return-void

    .line 1222
    :cond_1
    const-string/jumbo v0, "_short_cut_"

    invoke-virtual {p0, v0, v7}, Lcom/alipay/android/launcher/TabLauncher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1224
    const-string/jumbo v1, "shortcut"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1227
    const-string/jumbo v1, "\u652f\u4ed8\u5b9d"

    invoke-direct {p0, v1}, Lcom/alipay/android/launcher/TabLauncher;->unInstallShortcut(Ljava/lang/String;)V

    .line 1228
    const-string/jumbo v1, "Alipay"

    invoke-direct {p0, v1}, Lcom/alipay/android/launcher/TabLauncher;->unInstallShortcut(Ljava/lang/String;)V

    .line 1229
    const-string/jumbo v1, "\u652f\u4ed8\u5bf6"

    invoke-direct {p0, v1}, Lcom/alipay/android/launcher/TabLauncher;->unInstallShortcut(Ljava/lang/String;)V

    .line 1230
    const-string/jumbo v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 1231
    const-string/jumbo v2, "duplicate"

    .line 1233
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1234
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1236
    const-string/jumbo v5, "com.eg.android.AlipayGphone.AlipayLogin"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1237
    const/high16 v5, 0x10200000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1240
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1241
    const-string/jumbo v1, "android.intent.extra.shortcut.NAME"

    .line 1242
    sget v6, Lcom/alipay/android/tablauncher/R$string;->app_shortcut_name:I

    invoke-virtual {p0, v6}, Lcom/alipay/android/launcher/TabLauncher;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1241
    invoke-virtual {v5, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1243
    invoke-virtual {v5, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1244
    const-string/jumbo v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1246
    const-string/jumbo v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 1249
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "appicon"

    const-string/jumbo v6, "drawable"

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1247
    invoke-static {v4, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    .line 1246
    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1250
    invoke-virtual {p0, v5}, Lcom/alipay/android/launcher/TabLauncher;->sendBroadcast(Landroid/content/Intent;)V

    .line 1253
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "shortcut"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1254
    sget v0, Lcom/alipay/android/tablauncher/R$string;->install_shortcut_success:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/alipay/android/launcher/TabLauncher;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private isBackgroundRunning()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 466
    const-string/jumbo v0, "android.permission.GET_TASKS"

    invoke-static {p0, v0}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 467
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 468
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "TabLauncher"

    const-string/jumbo v3, "GET_TASKS PERMISSION_DENIED"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 484
    :goto_0
    return v0

    .line 472
    :cond_0
    :try_start_0
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 473
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 475
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 476
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 477
    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "TabLauncher"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move v0, v1

    .line 484
    goto :goto_0
.end method

.method private isLaunchFromFP(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 488
    if-nez p1, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private isSchemeOrLoginSecheme(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 354
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 355
    if-nez v1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "login"

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isShortCutExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1457
    .line 1459
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1462
    invoke-static {p0}, Lcom/alipay/android/launcher/LauncherUtil;->getAuthorityFromPermissionDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1463
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1464
    :cond_0
    invoke-static {p0}, Lcom/alipay/android/launcher/LauncherUtil;->getAuthorityFromPermission(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1466
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1467
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1468
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1469
    const/4 v0, 0x1

    .line 1471
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1472
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1478
    :cond_2
    :goto_1
    return v0

    .line 1474
    :catch_0
    move-exception v0

    .line 1476
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method private performUriLaunch(Landroid/content/Intent;Z)Z
    .locals 5

    .prologue
    .line 505
    if-eqz p1, :cond_4

    .line 506
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_3

    const-string/jumbo v1, "login"

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 509
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BundleUtil;->serialBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 510
    const-string/jumbo v1, "loginStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    const-string/jumbo v2, "success"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    const-string/jumbo v1, "targetAppId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-direct {p0, v1, v0}, Lcom/alipay/android/launcher/TabLauncher;->appTransfer(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 524
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 529
    :goto_1
    return v0

    .line 515
    :cond_1
    const-string/jumbo v2, "fail"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 517
    const-string/jumbo v1, "UC-ZHAQ-56"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "loginTrace"

    const-string/jumbo v4, "performUriLaunch LoginApp"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/alipay/android/launcher/TabLauncher;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-direct {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->toLoginApp(Landroid/os/Bundle;)V

    goto :goto_0

    .line 519
    :cond_2
    const-string/jumbo v2, "list"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    const-string/jumbo v1, "20000018"

    invoke-direct {p0, v1, v0}, Lcom/alipay/android/launcher/TabLauncher;->appTransfer(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 525
    :cond_3
    if-eqz p2, :cond_4

    .line 526
    invoke-direct {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->callGestureService(Landroid/net/Uri;)Z

    move-result v0

    goto :goto_1

    .line 529
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private processGestureCallBack(Landroid/net/Uri;Z)V
    .locals 3

    .prologue
    .line 1159
    if-eqz p2, :cond_0

    .line 1160
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TabLauncher"

    const-string/jumbo v2, "processGestureCallBack"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedNotifyCallBack(Z)V

    .line 1162
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->processPush(Landroid/net/Uri;)V

    .line 1164
    :cond_0
    return-void
.end method

.method private processPush(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 1192
    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 1191
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    .line 1194
    return-void
.end method

.method private registerExitPointCut()V
    .locals 3

    .prologue
    .line 1258
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    .line 1259
    const-string/jumbo v1, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.exit()"

    .line 1260
    new-instance v2, Lcom/alipay/mobile/aspect/advice/ExitAppAdvice;

    invoke-direct {v2}, Lcom/alipay/mobile/aspect/advice/ExitAppAdvice;-><init>()V

    .line 1258
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 1261
    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 889
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 890
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    if-eqz p2, :cond_0

    .line 892
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    const-string/jumbo v1, "extra"

    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 896
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 897
    return-void
.end method

.method private setTabWidgetBackground(Landroid/widget/TabWidget;)V
    .locals 5

    .prologue
    const v4, -0x50402

    .line 338
    const/4 v0, 0x0

    .line 340
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 341
    sget v2, Lcom/alipay/android/tablauncher/R$drawable;->tab_black_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 345
    if-nez v0, :cond_0

    .line 346
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 349
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TabWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    return-void

    .line 342
    :catch_0
    move-exception v1

    .line 343
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "TabLauncher"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v1

    .line 345
    if-nez v0, :cond_1

    .line 346
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 349
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TabWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    throw v1
.end method

.method private setupBadge()V
    .locals 5

    .prologue
    .line 689
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 716
    :goto_0
    return-void

    .line 693
    :cond_0
    const/4 v0, 0x0

    .line 695
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 712
    :try_start_0
    invoke-static {p0, v1}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->setBadge(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 713
    :catch_0
    move-exception v0

    .line 714
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TabLauncher"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 695
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidgetGroup;

    .line 697
    :try_start_1
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getBadgeView()Landroid/view/View;

    move-result-object v0

    .line 698
    instance-of v3, v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    if-eqz v3, :cond_3

    .line 699
    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 700
    sget-object v3, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->NUM:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->getBadgeStyle()Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 701
    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->getMsgCount()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 704
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "must be BadgeView"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 706
    :catch_1
    move-exception v0

    .line 707
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "TabLauncher"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private toLoginApp(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 536
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 537
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 538
    invoke-virtual {v0, v2, v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->notifyUnlockLoginApp(ZZ)V

    .line 539
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/launcher/TabLauncher$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/alipay/android/launcher/TabLauncher$7;-><init>(Lcom/alipay/android/launcher/TabLauncher;Lcom/alipay/mobile/framework/service/ext/security/AuthService;Landroid/os/Bundle;)V

    .line 551
    const-string/jumbo v0, "com.alipay.android.launcher.TabLauncher.toLoginApp()"

    .line 539
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 551
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 552
    return-void
.end method

.method private unInstallShortcut(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1205
    const-string/jumbo v0, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    .line 1207
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ".AlipayLogin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1207
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1210
    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    .line 1209
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1210
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 1212
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1213
    const-string/jumbo v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1214
    const-string/jumbo v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1215
    invoke-virtual {p0, v2}, Lcom/alipay/android/launcher/TabLauncher;->sendBroadcast(Landroid/content/Intent;)V

    .line 1216
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1013
    const/4 v0, 0x0

    .line 1014
    invoke-virtual {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->findWidgetGroupById(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;

    move-result-object v1

    .line 1015
    if-eqz v1, :cond_2

    .line 1016
    invoke-interface {v1}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getView()Landroid/view/View;

    move-result-object v1

    .line 1018
    if-eqz v1, :cond_0

    .line 1019
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/alipay/android/launcher/TabLauncher$TabChangeTimeRunnable;

    invoke-direct {v2, p0, p1, v1}, Lcom/alipay/android/launcher/TabLauncher$TabChangeTimeRunnable;-><init>(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1021
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1022
    if-eqz v0, :cond_1

    .line 1023
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v0, v1

    .line 1028
    :cond_2
    return-object v0
.end method

.method findWidgetGroupById(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1038
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1048
    :goto_0
    return-object v1

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    move-object v1, v0

    .line 1048
    goto :goto_0

    .line 1042
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidgetGroup;

    .line 1043
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mClassLoader:Ljava/lang/ClassLoader;

    .line 1201
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
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
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 221
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/alipay/android/launcher/TabLauncher;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 222
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 226
    sput-boolean v5, Lcom/alipay/android/launcher/TabLauncher;->isDestroyed:Z

    .line 227
    iput-boolean v1, p0, Lcom/alipay/android/launcher/TabLauncher;->isOnCreate:Z

    .line 228
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 231
    invoke-virtual {p0, v1}, Lcom/alipay/android/launcher/TabLauncher;->requestWindowFeature(I)Z

    .line 233
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 234
    sget v0, Lcom/alipay/android/tablauncher/R$layout;->launcher_tab:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->setContentView(I)V

    .line 235
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    .line 236
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabWidget:Landroid/widget/TabWidget;

    .line 237
    sget v0, Lcom/alipay/android/tablauncher/R$id;->launcher_title_bar:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->titlebar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 239
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabWidget:Landroid/widget/TabWidget;

    invoke-direct {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->setTabWidgetBackground(Landroid/widget/TabWidget;)V

    .line 240
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->initTitleBar()V

    .line 241
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "TabLauncher"

    const-string/jumbo v3, "onCreate"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/android/launcher/TabLauncherApp;

    if-nez v0, :cond_1

    .line 246
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    .line 247
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "20000001"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->finish()V

    .line 252
    iput-boolean v5, p0, Lcom/alipay/android/launcher/TabLauncher;->isOnCreate:Z

    .line 327
    :goto_1
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TabLauncher"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 257
    invoke-direct {p0, v3}, Lcom/alipay/android/launcher/TabLauncher;->isLaunchFromFP(Landroid/content/Intent;)V

    .line 259
    invoke-direct {p0, v3, v1}, Lcom/alipay/android/launcher/TabLauncher;->performUriLaunch(Landroid/content/Intent;Z)Z

    move-result v2

    .line 260
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 261
    const-class v4, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    .line 260
    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mAccountService:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    .line 262
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mAccountService:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginLogonId()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-direct {p0, v3}, Lcom/alipay/android/launcher/TabLauncher;->isSchemeOrLoginSecheme(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "TabLauncher"

    const-string/jumbo v3, "oncreate call to LoginApp"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string/jumbo v0, "UC-ZHAQ-56"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "loginTrace"

    const-string/jumbo v4, "oncreate call to LoginApp"

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/alipay/android/launcher/TabLauncher;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, v6}, Lcom/alipay/android/launcher/TabLauncher;->toLoginApp(Landroid/os/Bundle;)V

    move v0, v1

    .line 273
    :goto_2
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 274
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->setup()V

    .line 276
    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 277
    invoke-static {}, Lcom/alipay/mobile/common/utils/Utilz;->getTotalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/launcher/TabLauncher$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/launcher/TabLauncher$2;-><init>(Lcom/alipay/android/launcher/TabLauncher;)V

    .line 284
    const-wide/16 v2, 0x5dc

    .line 279
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    :goto_3
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/launcher/TabLauncher$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/launcher/TabLauncher$3;-><init>(Lcom/alipay/android/launcher/TabLauncher;)V

    .line 294
    const-wide/16 v2, 0x3e8

    .line 289
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->registerExitPointCut()V

    .line 299
    new-instance v0, Lcom/alipay/android/launcher/TabLauncher$4;

    invoke-direct {v0, p0}, Lcom/alipay/android/launcher/TabLauncher$4;-><init>(Lcom/alipay/android/launcher/TabLauncher;)V

    .line 314
    sput-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->kb:Lcom/alipay/mobile/commonui/widget/keyboard/KeyboardBehavor;

    .line 319
    new-instance v0, Lcom/alipay/android/launcher/TabLauncher$HomeButtonBroadcastReceiver;

    invoke-direct {v0, p0, v6}, Lcom/alipay/android/launcher/TabLauncher$HomeButtonBroadcastReceiver;-><init>(Lcom/alipay/android/launcher/TabLauncher;Lcom/alipay/android/launcher/TabLauncher$HomeButtonBroadcastReceiver;)V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mHomeButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 320
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 321
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 322
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->mHomeButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/launcher/TabLauncher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    new-instance v0, Lcom/alipay/android/launcher/badge/BadgeCountGetter;

    invoke-direct {v0, p0}, Lcom/alipay/android/launcher/badge/BadgeCountGetter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->badgeCountGetter:Lcom/alipay/android/launcher/badge/BadgeCountGetter;

    .line 326
    iput-boolean v5, p0, Lcom/alipay/android/launcher/TabLauncher;->isOnCreate:Z

    goto/16 :goto_1

    .line 270
    :cond_2
    const-string/jumbo v0, "UC-ZHAQ-56"

    const-string/jumbo v1, ""

    const-string/jumbo v3, "loginTrace"

    const-string/jumbo v4, "oncreate not call LoginApp"

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/alipay/android/launcher/TabLauncher;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_2

    .line 286
    :cond_3
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->initTab()V

    goto :goto_3
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
    .line 1053
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onDestroy()V

    .line 1054
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/launcher/TabLauncher;->isDestroyed:Z

    .line 1057
    invoke-static {}, Lcom/alipay/android/launcher/service/LauncherService;->stopLauncherService()V

    .line 1063
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mHomeButtonReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mHomeButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    if-nez v0, :cond_2

    .line 1076
    :cond_1
    return-void

    .line 1070
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidgetGroup;

    .line 1071
    if-eqz v0, :cond_3

    .line 1072
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->destroy()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 205
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    .line 206
    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {p0, v1}, Lcom/alipay/android/launcher/TabLauncher;->findWidgetGroupById(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/alipay/android/launcher/core/IWidgetGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    :goto_0
    return v0

    .line 211
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 212
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->background()V

    goto :goto_0

    .line 216
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 569
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 571
    invoke-virtual {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->setIntent(Landroid/content/Intent;)V

    .line 573
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mAccountService:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mAccountService:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginLogonId()Ljava/lang/String;

    move-result-object v0

    .line 576
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TabLauncher"

    const-string/jumbo v2, "onNewIntent call to LoginApp"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string/jumbo v0, "UC-ZHAQ-56"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "loginTrace"

    const-string/jumbo v3, "onNewIntent call to LoginApp"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alipay/android/launcher/TabLauncher;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->toLoginApp(Landroid/os/Bundle;)V

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->isLaunchFromFP(Landroid/content/Intent;)V

    .line 583
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/launcher/TabLauncher;->performUriLaunch(Landroid/content/Intent;Z)Z

    .line 584
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->handleTabChanged()V

    .line 586
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 608
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onPause()V

    .line 611
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->findWidgetGroupById(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;

    move-result-object v0

    .line 612
    if-eqz v0, :cond_0

    .line 613
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentView()Landroid/view/View;

    move-result-object v2

    .line 614
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 613
    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->leaveView(Landroid/view/View;Ljava/lang/String;)V

    .line 618
    :cond_0
    const-string/jumbo v0, "com.alipay.mobile.LAUNCHER_STATUS_CHANGED"

    const-string/jumbo v1, "state=onPause"

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/launcher/TabLauncher;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->setupBadge()V

    .line 622
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 626
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->doChangeFriendTab()V

    .line 627
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onResume()V

    .line 628
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/base/config/ChannelConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ChannelConfig;

    .line 629
    if-eqz v0, :cond_0

    const-string/jumbo v1, "xiaomi_store"

    const-string/jumbo v2, "channel_id"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/base/config/ChannelConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->installShortcut()V

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/android/launcher/TabLauncherApp;

    if-nez v0, :cond_1

    .line 672
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/android/launcher/TabLauncherApp;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/TabLauncherApp;->getTabId()Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string/jumbo v2, "subappResume"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 642
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/android/launcher/TabLauncher;->findWidgetGroupById(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;

    move-result-object v1

    .line 643
    if-eqz v1, :cond_2

    .line 644
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 645
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 644
    invoke-virtual {v2, v3, v1, v0, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->enterView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->handleTabChanged()V

    .line 654
    iget-boolean v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tipsForUninstallOldClient:Z

    if-eqz v0, :cond_3

    .line 655
    iput-boolean v4, p0, Lcom/alipay/android/launcher/TabLauncher;->tipsForUninstallOldClient:Z

    .line 656
    invoke-static {p0}, Lcom/alipay/mobile/common/helper/SafeDataTransferHelper;->checkAndUninstallOldClient(Landroid/content/Context;)V

    .line 662
    :cond_3
    iget-boolean v0, p0, Lcom/alipay/android/launcher/TabLauncher;->billStarted:Z

    if-eqz v0, :cond_4

    .line 663
    iput-boolean v4, p0, Lcom/alipay/android/launcher/TabLauncher;->billStarted:Z

    .line 667
    :cond_4
    const-string/jumbo v0, "com.alipay.mobile.LAUNCHER_STATUS_CHANGED"

    .line 668
    const-string/jumbo v1, "state=onResume"

    .line 667
    invoke-direct {p0, v0, v1}, Lcom/alipay/android/launcher/TabLauncher;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->checkAndFixTopAppidError()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1080
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1081
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/android/launcher/TabLauncherApp;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/android/launcher/TabLauncherApp;

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/launcher/TabLauncherApp;->setTabId(Ljava/lang/String;)V

    .line 1083
    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1004
    iget-boolean v0, p0, Lcom/alipay/android/launcher/TabLauncher;->isGotDefaultOnclickListener:Z

    if-eqz v0, :cond_0

    .line 1005
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->_onTabChanged(Ljava/lang/String;)V

    .line 1009
    :goto_0
    return-void

    .line 1007
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->gestureOnTabChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 676
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onWindowFocusChanged(Z)V

    .line 677
    if-eqz p1, :cond_0

    .line 678
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mLauncherServiceThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mLauncherServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mLauncherServiceThread:Ljava/lang/Thread;

    .line 686
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected replaceResources(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 363
    new-instance v0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;

    invoke-direct {v0, p0}, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mXmlWidgetFactory:Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;

    .line 364
    return-void
.end method

.method public showAllApps()V
    .locals 0

    .prologue
    .line 901
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

.method protected writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1086
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 1087
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 1091
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 1092
    return-void
.end method
