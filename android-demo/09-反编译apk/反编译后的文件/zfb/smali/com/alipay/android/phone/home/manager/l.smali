.class final Lcom/alipay/android/phone/home/manager/l;
.super Ljava/lang/Object;
.source "BaseAppsItemAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/l;->a:Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/l;->a:Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->notifyDataSetChanged()V

    .line 820
    return-void
.end method
