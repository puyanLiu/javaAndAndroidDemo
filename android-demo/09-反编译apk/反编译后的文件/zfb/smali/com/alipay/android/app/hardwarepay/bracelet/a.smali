.class final Lcom/alipay/android/app/hardwarepay/bracelet/a;
.super Ljava/lang/Object;
.source "BraceletOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;

.field private final synthetic d:Ljava/util/Properties;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;Landroid/content/Context;Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;Ljava/util/Properties;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->c:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;

    iput-object p4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->d:Ljava/util/Properties;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->c:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->d:Ljava/util/Properties;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;->a(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;Landroid/content/Context;Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;)V

    .line 57
    return-void
.end method
