.class final Lcom/alipay/android/app/flybird/ui/window/view/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/k;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/k;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->a(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/k;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/k;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->b(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)Z

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->a(ZLcom/alipay/android/app/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
