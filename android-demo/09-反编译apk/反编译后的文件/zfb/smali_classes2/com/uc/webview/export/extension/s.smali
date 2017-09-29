.class final Lcom/uc/webview/export/extension/s;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 404
    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-wide/16 v0, 0x400

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->a(J)V

    goto :goto_0

    :pswitch_1
    const-wide/16 v0, 0x800

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->a(J)V

    goto :goto_0

    :pswitch_2
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->a(J)V

    goto :goto_0

    :pswitch_3
    const-wide/16 v0, 0x4000

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->a(J)V

    goto :goto_0

    :pswitch_4
    const-wide/32 v0, 0x10000

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->a(J)V

    goto :goto_0

    :pswitch_5
    sget-object v1, Lcom/uc/webview/export/internal/d;->l:Ljava/util/Map;

    const-string/jumbo v2, "sdk_ecur1"

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_6
    sget-object v1, Lcom/uc/webview/export/internal/d;->l:Ljava/util/Map;

    const-string/jumbo v2, "sdk_ecdl1"

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_7
    sget-object v1, Lcom/uc/webview/export/internal/d;->l:Ljava/util/Map;

    const-string/jumbo v2, "sdk_ecv1"

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_8
    sget-object v1, Lcom/uc/webview/export/internal/d;->l:Ljava/util/Map;

    const-string/jumbo v2, "sdk_ecuz1"

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
