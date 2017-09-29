.class final Lcom/taobao/android/service/b;
.super Ljava/lang/Object;
.source "Services.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field final synthetic a:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/taobao/android/service/b;->a:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/taobao/android/service/b;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/taobao/android/service/Services;->a(Landroid/content/Context;)V

    .line 188
    return-void
.end method
