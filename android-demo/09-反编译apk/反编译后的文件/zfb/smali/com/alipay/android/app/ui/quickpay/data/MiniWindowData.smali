.class public abstract Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:Lcom/alipay/android/app/json/JSONObject;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->b:Z

    .line 45
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->c:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->d:I

    .line 53
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->a:Z

    .line 54
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->b:Z

    .line 78
    return-void
.end method

.method public b()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->f:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->c:Z

    .line 86
    return-void
.end method

.method public d(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->f:Lcom/alipay/android/app/json/JSONObject;

    .line 115
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->e:I

    goto :goto_0
.end method

.method public final t()V
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->d:I

    .line 58
    return-void
.end method

.method public final u()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->d:I

    return v0
.end method

.method public final v()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->a:Z

    .line 70
    return-void
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->b:Z

    return v0
.end method

.method public final x()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->c:Z

    return v0
.end method
