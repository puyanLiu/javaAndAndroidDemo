.class final Lcom/alipay/android/phone/mobilesdk/mtop/impl/b;
.super Ljava/lang/Object;
.source "MtopServiceImpl.java"

# interfaces
.implements Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputDO:",
        "Lmtopsdk/mtop/domain/BaseOutDo;",
        ">",
        "Ljava/lang/Object;",
        "Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;"
    }
.end annotation


# instance fields
.field a:Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback",
            "<TOutputDO;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TOutputDO;>;"
        }
    .end annotation
.end field

.field c:Lmtopsdk/mtop/intf/MtopBuilder;

.field final synthetic d:Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback;Ljava/lang/Class;Lmtopsdk/mtop/intf/MtopBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback",
            "<TOutputDO;>;",
            "Ljava/lang/Class",
            "<TOutputDO;>;",
            "Lmtopsdk/mtop/intf/MtopBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/b;->d:Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/b;->a:Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback;

    .line 228
    iput-object p3, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/b;->b:Ljava/lang/Class;

    .line 229
    iput-object p4, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/b;->c:Lmtopsdk/mtop/intf/MtopBuilder;

    .line 230
    return-void
.end method


# virtual methods
.method public final onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 236
    :try_start_0
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/b;->d:Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->access$000(Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/b;->d:Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->registerSessionInfo()V

    .line 238
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/b;->c:Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-virtual {v1}, Lmtopsdk/mtop/intf/MtopBuilder;->asyncRequest()Lmtopsdk/mtop/common/ApiID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/b;->b:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->handleMtopResponse(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/b;->a:Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback;

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback;->onFinished(Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;)V

    goto :goto_0
.end method
