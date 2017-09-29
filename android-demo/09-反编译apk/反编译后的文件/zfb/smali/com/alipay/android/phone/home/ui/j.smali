.class final Lcom/alipay/android/phone/home/ui/j;
.super Ljava/lang/Object;
.source "AppsCenterFragment.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

.field private final synthetic b:Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/j;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/j;->b:Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/ui/j;)Lcom/alipay/android/phone/home/ui/AppsCenterFragment;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/j;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    return-object v0
.end method


# virtual methods
.method public final onDragEnded()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public final onEditAction(I)Z
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/j;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->access$0(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->b(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 150
    const-string/jumbo v1, "addToHome"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->moveToHome()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/j;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->access$2(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)V

    .line 153
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/j;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->access$0(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 157
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onEnterEditMode()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/j;->b:Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 127
    return-void
.end method

.method public final onItemLongClicked(I)V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/j;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 121
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 122
    return-void
.end method

.method public final onQuitEditMode(Z)V
    .locals 2

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/phone/home/ui/k;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/k;-><init>(Lcom/alipay/android/phone/home/ui/j;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 139
    :cond_0
    return-void
.end method

.method public final onReorder(II)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/j;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->access$0(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->a(II)V

    .line 111
    return-void
.end method
