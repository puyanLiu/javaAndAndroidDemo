.class final Lcom/alipay/android/app/hardwarepay/bracelet/activity/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/g;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/g;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/h;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 749
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 750
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 751
    return-void
.end method
