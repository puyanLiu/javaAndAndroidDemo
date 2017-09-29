.class final Lcom/alipay/android/app/flybird/ui/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/t;->a:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/t;->a:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->c(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->dispose()V

    .line 468
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/t;->a:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    .line 469
    return-void
.end method
