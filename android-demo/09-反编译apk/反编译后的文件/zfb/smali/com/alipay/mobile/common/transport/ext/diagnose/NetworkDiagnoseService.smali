.class public interface abstract Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;
.super Ljava/lang/Object;
.source "NetworkDiagnoseService.java"


# static fields
.field public static final STATE_CONNECTING_SERVER:I = 0x1

.field public static final STATE_FAIL:I = 0x5

.field public static final STATE_SUCCESS:I = 0x4

.field public static final STATE_TRACE_ROUTING:I = 0x2

.field public static final STATE_UPLOADING:I = 0x3


# virtual methods
.method public abstract addDiagnoseListener(Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseListener;)V
.end method

.method public abstract cancel()V
.end method

.method public abstract isCanDiagnose()Z
.end method

.method public abstract removeDiagnoseListener(Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseListener;)V
.end method

.method public abstract startDiagnose()V
.end method
