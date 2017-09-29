.class public final Lcom/alipay/android/phone/businesscommon/advertisement/d/a;
.super Ljava/lang/Object;
.source "AdSyncCallbackImpl.java"

# interfaces
.implements Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 321
    const-string/jumbo v0, "reportMsgReceived:"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->a()Lcom/alipay/android/phone/businesscommon/advertisement/d/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 330
    const-string/jumbo v0, "reportCmdReceived:"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->a()Lcom/alipay/android/phone/businesscommon/advertisement/d/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 339
    const-string/jumbo v0, "reportCmdHandled:"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->a()Lcom/alipay/android/phone/businesscommon/advertisement/d/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onReceiveCommand(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 2

    .prologue
    .line 279
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/d/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/d/c;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/d/a;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method public final onReceiveMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/d/b;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/d/b;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/d/a;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a(Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method
