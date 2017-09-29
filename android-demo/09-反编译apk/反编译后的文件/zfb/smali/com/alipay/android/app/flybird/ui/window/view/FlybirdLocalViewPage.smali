.class public abstract Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/view/View;

.field protected b:I

.field protected c:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

.field protected d:Landroid/app/Activity;

.field public e:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

.field private f:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->a:Landroid/view/View;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->b:I

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V
    .locals 2

    .prologue
    .line 28
    iput p2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->b:I

    .line 29
    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->c:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    .line 30
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->d:Landroid/app/Activity;

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->a:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public abstract a(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
.end method

.method public final a(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/view/c;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/flybird/ui/window/view/c;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    invoke-static {v0}, Lcom/alipay/android/app/util/GlobalExcutorUtil;->a(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public final a(ZLcom/alipay/android/app/json/JSONObject;)V
    .locals 6

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->f:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->d:Landroid/app/Activity;

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->c:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    move v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;-><init>(Landroid/content/Context;ZLcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->f:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    .line 47
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->f:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_1
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->f:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->a()V

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public abstract b()Z
.end method

.method public c()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->a:Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method
