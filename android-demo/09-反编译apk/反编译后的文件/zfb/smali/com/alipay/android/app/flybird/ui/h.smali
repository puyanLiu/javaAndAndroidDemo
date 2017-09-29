.class final Lcom/alipay/android/app/flybird/ui/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog$DialogButtonActionListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/g;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/g;)V
    .locals 0

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/h;->a:Lcom/alipay/android/app/flybird/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .prologue
    const/16 v1, 0x64

    .line 1304
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/h;->a:Lcom/alipay/android/app/flybird/ui/g;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/g;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/h;->a:Lcom/alipay/android/app/flybird/ui/g;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/g;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->b()Z

    move-result v0

    if-nez v0, :cond_1

    if-eq p1, v1, :cond_1

    .line 1331
    :cond_0
    :goto_0
    return-void

    .line 1307
    :cond_1
    if-ne p1, v1, :cond_3

    .line 1308
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/h;->a:Lcom/alipay/android/app/flybird/ui/g;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/g;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1309
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/h;->a:Lcom/alipay/android/app/flybird/ui/g;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/g;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/h;->a:Lcom/alipay/android/app/flybird/ui/g;

    iget-object v3, v3, Lcom/alipay/android/app/flybird/ui/g;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "flybird_verifying"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a([Ljava/lang/String;)V

    .line 1327
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/h;->a:Lcom/alipay/android/app/flybird/ui/g;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/g;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->j(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/h;->a:Lcom/alipay/android/app/flybird/ui/g;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/g;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/h;->a:Lcom/alipay/android/app/flybird/ui/g;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/g;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->j(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 1312
    :cond_3
    if-nez p1, :cond_4

    .line 1313
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/h;->a:Lcom/alipay/android/app/flybird/ui/g;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/g;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-string/jumbo v1, "bl"

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v3, "(\'status=0009\')"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto :goto_1

    .line 1315
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 1316
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/h;->a:Lcom/alipay/android/app/flybird/ui/g;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/g;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-string/jumbo v1, "bl"

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v3, "(\'status=0005\')"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto :goto_1

    .line 1322
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/h;->a:Lcom/alipay/android/app/flybird/ui/g;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/g;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/h;->a:Lcom/alipay/android/app/flybird/ui/g;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/g;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1323
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/h;->a:Lcom/alipay/android/app/flybird/ui/g;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/g;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-string/jumbo v1, "bl"

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Back:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v3, "{\"action\":{\"name\":\"loc:back\"}}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto :goto_1
.end method
