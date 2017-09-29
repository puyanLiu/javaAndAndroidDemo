.class public Lorg/jacoco/core/runtime/RemoteControlReader;
.super Lorg/jacoco/core/data/ExecutionDataReader;


# instance fields
.field private a:Lorg/jacoco/core/runtime/IRemoteCommandVisitor;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jacoco/core/data/ExecutionDataReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected readBlock(B)Z
    .locals 3

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1}, Lorg/jacoco/core/data/ExecutionDataReader;->readBlock(B)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lorg/jacoco/core/runtime/RemoteControlReader;->a:Lorg/jacoco/core/runtime/IRemoteCommandVisitor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "No remote command visitor."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jacoco/core/runtime/RemoteControlReader;->in:Lorg/jacoco/core/internal/data/CompactDataInput;

    invoke-virtual {v0}, Lorg/jacoco/core/internal/data/CompactDataInput;->readBoolean()Z

    move-result v0

    iget-object v1, p0, Lorg/jacoco/core/runtime/RemoteControlReader;->in:Lorg/jacoco/core/internal/data/CompactDataInput;

    invoke-virtual {v1}, Lorg/jacoco/core/internal/data/CompactDataInput;->readBoolean()Z

    move-result v1

    iget-object v2, p0, Lorg/jacoco/core/runtime/RemoteControlReader;->a:Lorg/jacoco/core/runtime/IRemoteCommandVisitor;

    invoke-interface {v2, v0, v1}, Lorg/jacoco/core/runtime/IRemoteCommandVisitor;->visitDumpCommand(ZZ)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public readRecordIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataReader;->recordIds:Ljava/util/List;

    return-object v0
.end method

.method public setRemoteCommandVisitor(Lorg/jacoco/core/runtime/IRemoteCommandVisitor;)V
    .locals 0

    iput-object p1, p0, Lorg/jacoco/core/runtime/RemoteControlReader;->a:Lorg/jacoco/core/runtime/IRemoteCommandVisitor;

    return-void
.end method
