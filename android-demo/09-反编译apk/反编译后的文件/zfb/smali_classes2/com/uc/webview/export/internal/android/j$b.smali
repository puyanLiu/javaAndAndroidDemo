.class final Lcom/uc/webview/export/internal/android/j$b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/GeolocationPermissions$Callback;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/android/j;

.field private b:Landroid/webkit/GeolocationPermissions$Callback;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/android/j;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/j$b;->a:Lcom/uc/webview/export/internal/android/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/uc/webview/export/internal/android/j$b;->b:Landroid/webkit/GeolocationPermissions$Callback;

    .line 49
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;ZZ)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j$b;->b:Landroid/webkit/GeolocationPermissions$Callback;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j$b;->b:Landroid/webkit/GeolocationPermissions$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 56
    :cond_0
    return-void
.end method
