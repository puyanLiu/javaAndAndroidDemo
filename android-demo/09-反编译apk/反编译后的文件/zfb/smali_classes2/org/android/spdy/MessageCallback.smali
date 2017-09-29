.class final Lorg/android/spdy/MessageCallback;
.super Ljava/lang/Object;
.source "MessageCallback.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    .line 69
    :goto_0
    return v0

    .line 15
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lorg/android/spdy/MessageObj;

    .line 16
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 66
    goto :goto_0

    .line 19
    :pswitch_0
    iget-object v0, v7, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    iget-object v1, v0, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    iget-object v2, v7, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    iget-object v0, v7, Lorg/android/spdy/MessageObj;->superviseData:Ljava/lang/Object;

    check-cast v0, Lorg/android/spdy/SuperviseConnectInfo;

    invoke-interface {v1, v2, v0}, Lorg/android/spdy/Intenalcb;->spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V

    .line 69
    :goto_1
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 23
    :pswitch_2
    iget-object v0, v7, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    iget-object v0, v0, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    iget-object v1, v7, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    iget-boolean v2, v7, Lorg/android/spdy/MessageObj;->fin:Z

    iget-wide v3, v7, Lorg/android/spdy/MessageObj;->streamId:J

    iget-object v5, v7, Lorg/android/spdy/MessageObj;->data:[B

    iget v6, v7, Lorg/android/spdy/MessageObj;->length:I

    iget v7, v7, Lorg/android/spdy/MessageObj;->streamdata:I

    invoke-interface/range {v0 .. v7}, Lorg/android/spdy/Intenalcb;->spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJ[BII)V

    goto :goto_1

    .line 28
    :pswitch_3
    iget-object v0, v7, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    iget-object v0, v0, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    iget-object v1, v7, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    iget-boolean v2, v7, Lorg/android/spdy/MessageObj;->fin:Z

    iget-wide v3, v7, Lorg/android/spdy/MessageObj;->streamId:J

    iget v5, v7, Lorg/android/spdy/MessageObj;->length:I

    iget v6, v7, Lorg/android/spdy/MessageObj;->streamdata:I

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Intenalcb;->spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJII)V

    goto :goto_1

    .line 33
    :pswitch_4
    iget-object v0, v7, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    iget-object v0, v0, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    iget-object v1, v7, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    iget-boolean v2, v7, Lorg/android/spdy/MessageObj;->fin:Z

    iget-wide v3, v7, Lorg/android/spdy/MessageObj;->streamId:J

    iget v5, v7, Lorg/android/spdy/MessageObj;->length:I

    iget v6, v7, Lorg/android/spdy/MessageObj;->streamdata:I

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Intenalcb;->spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJII)V

    goto :goto_1

    .line 38
    :pswitch_5
    iget-object v0, v7, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    iget-object v0, v0, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    iget-object v1, v7, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    iget-wide v2, v7, Lorg/android/spdy/MessageObj;->uniqueId:J

    iget-object v4, v7, Lorg/android/spdy/MessageObj;->userData:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/android/spdy/Intenalcb;->spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V

    goto :goto_1

    .line 42
    :pswitch_6
    iget-object v0, v7, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    iget-object v0, v0, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    iget-object v1, v7, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    iget-wide v2, v7, Lorg/android/spdy/MessageObj;->streamId:J

    iget v4, v7, Lorg/android/spdy/MessageObj;->streamdata:I

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/android/spdy/Intenalcb;->spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JI)V

    goto :goto_1

    .line 46
    :pswitch_7
    iget-object v0, v7, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    iget-object v0, v0, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    iget-object v1, v7, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    iget-wide v2, v7, Lorg/android/spdy/MessageObj;->streamId:J

    iget-object v4, v7, Lorg/android/spdy/MessageObj;->statusCode:Lorg/android/spdy/SpdyStatusCode;

    iget v5, v7, Lorg/android/spdy/MessageObj;->streamdata:I

    iget-object v6, v7, Lorg/android/spdy/MessageObj;->superviseData:Ljava/lang/Object;

    check-cast v6, Lorg/android/spdy/SuperviseData;

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Intenalcb;->spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JLorg/android/spdy/SpdyStatusCode;ILorg/android/spdy/SuperviseData;)V

    goto :goto_1

    .line 56
    :pswitch_8
    iget-object v0, v7, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    iget-object v0, v0, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    iget-object v1, v7, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    iget-wide v2, v7, Lorg/android/spdy/MessageObj;->streamId:J

    iget-object v4, v7, Lorg/android/spdy/MessageObj;->head:Ljava/util/Map;

    iget v5, v7, Lorg/android/spdy/MessageObj;->streamdata:I

    invoke-interface/range {v0 .. v5}, Lorg/android/spdy/Intenalcb;->spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;I)V

    goto :goto_1

    .line 61
    :pswitch_9
    iget-object v0, v7, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    iget-object v0, v0, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    iget-object v1, v7, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    iget v2, v7, Lorg/android/spdy/MessageObj;->length:I

    iget-object v3, v7, Lorg/android/spdy/MessageObj;->userData:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lorg/android/spdy/Intenalcb;->spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
