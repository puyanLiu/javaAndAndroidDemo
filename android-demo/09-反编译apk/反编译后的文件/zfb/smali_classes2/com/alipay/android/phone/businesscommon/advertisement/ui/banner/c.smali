.class public final Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;
.super Ljava/lang/Object;
.source "BannerAdvert.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->e:J

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->f:Z

    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->a:I

    .line 25
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->c:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->d:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->e:J

    return-wide v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->f:Z

    return v0
.end method
