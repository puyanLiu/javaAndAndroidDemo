.class public Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;
.super Ljava/lang/Object;
.source "MtopResponseWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputDO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field outputDO:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOutputDO;"
        }
    .end annotation
.end field

.field responseStatus:Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutputDO()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOutputDO;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;->outputDO:Ljava/lang/Object;

    return-object v0
.end method

.method public getResponseStatus()Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;->responseStatus:Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    return-object v0
.end method

.method public setOutputDO(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutputDO;)V"
        }
    .end annotation

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;->outputDO:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public setResponseStatus(Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;->responseStatus:Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    .line 21
    return-void
.end method
