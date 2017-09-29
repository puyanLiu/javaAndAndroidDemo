.class final Lcom/alipay/android/phone/home/ui/ac;
.super Ljava/lang/Object;
.source "HomeFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

.field private final synthetic b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/ac;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/ac;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 776
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ac;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    if-eqz v0, :cond_2

    .line 777
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "O2ORemoteInfo iconUrl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/ac;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v2, v2, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 778
    const-string/jumbo v2, " jumpUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/ac;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v2, v2, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->jumpUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/ac;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v2, v2, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 777
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ac;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->access$0(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;

    .line 780
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    if-eqz v1, :cond_1

    .line 781
    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/ac;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v2, v2, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 783
    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/ac;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v2, v2, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->jumpUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->jumpUrl:Ljava/lang/String;

    .line 784
    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/ac;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v2, v2, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->text:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->text:Ljava/lang/String;

    .line 785
    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/ac;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v2, v2, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/ac;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v2, v2, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->jumpUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->jumpUrl:Ljava/lang/String;

    .line 787
    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/ac;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->text:Ljava/lang/String;

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ac;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/ac;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->access$13(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V

    goto :goto_0

    .line 795
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ac;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->access$14(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V

    goto :goto_0
.end method
