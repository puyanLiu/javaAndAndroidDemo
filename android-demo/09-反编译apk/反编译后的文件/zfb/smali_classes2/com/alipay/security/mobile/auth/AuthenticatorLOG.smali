.class public Lcom/alipay/security/mobile/auth/AuthenticatorLOG;
.super Ljava/lang/Object;
.source "AuthenticatorLOG.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "wearable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Logit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 37
    invoke-static {p1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static error(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 25
    invoke-static {p0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static getStackString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
