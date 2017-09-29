.class Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;
.super Ljava/lang/Object;
.source "SearchResultListAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareCanceled()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public onShareSucceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 193
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;)V

    .line 199
    const-wide/16 v2, 0x1f4

    .line 193
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 200
    return-void
.end method
