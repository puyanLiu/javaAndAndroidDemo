.class final Lcom/alipay/android/app/helper/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lcom/alipay/android/app/helper/MspConfig;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/helper/MspConfig;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/alipay/android/app/helper/b;->b:Lcom/alipay/android/app/helper/MspConfig;

    iput-object p2, p0, Lcom/alipay/android/app/helper/b;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/alipay/android/app/helper/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "virtual_imei"

    iget-object v2, p0, Lcom/alipay/android/app/helper/b;->b:Lcom/alipay/android/app/helper/MspConfig;

    invoke-static {v2}, Lcom/alipay/android/app/helper/MspConfig;->a(Lcom/alipay/android/app/helper/MspConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 592
    iget-object v0, p0, Lcom/alipay/android/app/helper/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "virtual_imsi"

    iget-object v2, p0, Lcom/alipay/android/app/helper/b;->b:Lcom/alipay/android/app/helper/MspConfig;

    invoke-static {v2}, Lcom/alipay/android/app/helper/MspConfig;->b(Lcom/alipay/android/app/helper/MspConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 595
    return-void
.end method
