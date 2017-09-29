.class public Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;
.super Ljava/lang/Object;
.source "Certificate.java"


# static fields
.field public static final error_cert:I = 0x3

.field public static final error_cipher:I = 0x4

.field public static final error_crypto:I = 0x5

.field public static final error_fault:I = 0x2

.field public static final error_jni:I = -0x1

.field public static final error_nomem:I = 0x1

.field public static final error_ok:I = 0x0

.field public static final error_protocol:I = 0x6


# instance fields
.field private _error:I

.field private _handle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string/jumbo v0, "atls"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->_handle:J

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->_error:I

    return-void
.end method

.method private native doFinish()V
.end method

.method private native doRsaEnKey([B)[B
.end method

.method private native doRsaVerify([B[B)V
.end method

.method private native doVerify([BLjava/lang/String;Z)V
.end method


# virtual methods
.method public final error()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->_error:I

    return v0
.end method

.method public final finish()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->_error:I

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->doFinish()V

    .line 72
    return-void
.end method

.method public final rsaEnKey([B)[B
    .locals 1

    .prologue
    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->_error:I

    .line 48
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->doRsaEnKey([B)[B

    move-result-object v0

    return-object v0
.end method

.method public final rsaVerify([B[B)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->_error:I

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->doRsaVerify([B[B)V

    .line 62
    return-void
.end method

.method public final verify([BLjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->_error:I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->doVerify([BLjava/lang/String;Z)V

    .line 33
    return-void
.end method
