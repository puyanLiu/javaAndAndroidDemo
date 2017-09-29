.class final Lcom/alipay/android/app/helper/c;
.super Ljava/lang/Object;
.source "PayHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/helper/PayHelper;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/helper/PayHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/helper/c;->a:Lcom/alipay/android/app/helper/PayHelper;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/android/app/helper/c;->a:Lcom/alipay/android/app/helper/PayHelper;

    invoke-static {v0}, Lcom/alipay/android/app/helper/PayHelper;->a(Lcom/alipay/android/app/helper/PayHelper;)V

    .line 72
    return-void
.end method
