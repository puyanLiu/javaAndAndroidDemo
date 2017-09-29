.class Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;
.super Ljava/lang/Object;
.source "LaunchRouter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$app:Landroid/app/Application;

.field private final synthetic val$dialog:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

.field private final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;Landroid/content/SharedPreferences;Landroid/app/Application;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    iput-object p2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->val$dialog:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    iput-object p3, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->val$sp:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->val$app:Landroid/app/Application;

    iput-object p5, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->val$activity:Landroid/app/Activity;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/tablauncher/R$id;->btn_user_tip_ok:I

    if-ne v0, v1, :cond_3

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->val$dialog:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->val$dialog:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->val$dialog:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->dismiss()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->val$dialog:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->getCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "showTip"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->val$app:Landroid/app/Application;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->val$app:Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 170
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_2
    :goto_0
    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 173
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/tablauncher/R$id;->btn_user_tip_no:I

    if-ne v0, v1, :cond_2

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->val$dialog:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->val$dialog:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->val$dialog:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->dismiss()V

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 178
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 179
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
