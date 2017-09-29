.class public abstract Lcom/alipay/android/lib/plusin/ui/WindowData;
.super Lcom/alipay/android/lib/plusin/protocol/FrameData;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/lib/plusin/protocol/FrameData;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)V

    .line 45
    iput-boolean v1, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->b:Z

    .line 46
    iput-boolean v1, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->c:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->d:I

    .line 51
    iput-boolean v1, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->a:Z

    .line 52
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract c()I
.end method

.method public abstract d()Z
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->a:Z

    return v0
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->a:Z

    .line 68
    return-void
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->b:Z

    return v0
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->b:Z

    .line 76
    return-void
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->c:Z

    return v0
.end method
