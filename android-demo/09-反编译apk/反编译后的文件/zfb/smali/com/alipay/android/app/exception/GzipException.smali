.class public final Lcom/alipay/android/app/exception/GzipException;
.super Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/exception/GzipException;-><init>(Ljava/lang/String;B)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/exception/GzipException;-><init>(Ljava/lang/String;B)V

    .line 28
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;B)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method
