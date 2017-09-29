.class public final Lcom/alipay/pushsdk/push/a/g;
.super Ljava/lang/Object;
.source "AmnetLinkageConstants.java"


# direct methods
.method public static final a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    packed-switch p0, :pswitch_data_0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 24
    :pswitch_0
    const-string/jumbo v0, "amnet state :-1 un init"

    goto :goto_0

    .line 26
    :pswitch_1
    const-string/jumbo v0, "amnet state :0 connect break"

    goto :goto_0

    .line 28
    :pswitch_2
    const-string/jumbo v0, "amnet state :1 connecting"

    goto :goto_0

    .line 30
    :pswitch_3
    const-string/jumbo v0, "amnet state :2 connected"

    goto :goto_0

    .line 32
    :pswitch_4
    const-string/jumbo v0, "amnet state :3 ssl handshaking"

    goto :goto_0

    .line 34
    :pswitch_5
    const-string/jumbo v0, "amnet state :4 ssl handshake finish"

    goto :goto_0

    .line 36
    :pswitch_6
    const-string/jumbo v0, "amnet state :5 shutting down ssl"

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
