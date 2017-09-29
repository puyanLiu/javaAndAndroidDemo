.class Lcom/alipay/mobile/quinox/LauncherApplication$InitObserver;
.super Ljava/util/Observable;
.source "LauncherApplication.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/LauncherApplication;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 0

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/alipay/mobile/quinox/LauncherApplication$InitObserver;->this$0:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;Lcom/alipay/mobile/quinox/LauncherApplication$1;)V
    .locals 0

    .prologue
    .line 1271
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$InitObserver;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    return-void
.end method


# virtual methods
.method public setChanged()V
    .locals 0

    .prologue
    .line 1274
    invoke-super {p0}, Ljava/util/Observable;->setChanged()V

    .line 1275
    return-void
.end method
