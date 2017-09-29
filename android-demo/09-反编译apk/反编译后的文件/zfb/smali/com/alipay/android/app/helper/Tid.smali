.class public Lcom/alipay/android/app/helper/Tid;
.super Ljava/lang/Object;
.source "Tid.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alipay/android/app/helper/Tid;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTidSeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/android/app/helper/Tid;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/alipay/android/app/helper/Tid;->c:J

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/android/app/helper/Tid;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alipay/android/app/helper/Tid;->a:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setTidSeed(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/android/app/helper/Tid;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/alipay/android/app/helper/Tid;->c:J

    .line 37
    return-void
.end method
