.class public final Lcom/alipay/android/phone/a/a/d;
.super Lcom/alipay/android/phone/a/a/b;
.source "ChatMessageDataSource.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/a/a/b;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "messagelog"

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/d;->p:Ljava/lang/String;

    .line 10
    return-void
.end method
