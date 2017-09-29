.class final Lcom/alipay/pushsdk/push/c/b;
.super Ljava/util/Observable;
.source "NotificationServiceStateEvent.java"


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/c/a;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/push/c/a;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/pushsdk/push/c/b;->a:Lcom/alipay/pushsdk/push/c/a;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyObservers(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/b;->setChanged()V

    .line 62
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-static {}, Lcom/alipay/pushsdk/push/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
