.class final Lcom/alipay/android/phone/businesscommon/advertisement/e/c;
.super Ljava/lang/Object;
.source "AdExcutorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

.field private final b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/e/a;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/c;->a:Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/c;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;

    .line 77
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Execute feedbackRunnable:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/c;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;

    iget-object v1, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;->behavior:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    const-string/jumbo v1, " spaceObjectId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/c;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;

    iget-object v1, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;->spaceObjectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/b/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/b/a;-><init>()V

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/c;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/a/a;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string/jumbo v1, "feedback"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
