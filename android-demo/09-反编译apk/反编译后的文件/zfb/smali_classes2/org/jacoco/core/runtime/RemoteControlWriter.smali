.class public Lorg/jacoco/core/runtime/RemoteControlWriter;
.super Lorg/jacoco/core/data/ExecutionDataWriter;

# interfaces
.implements Lorg/jacoco/core/runtime/IRemoteCommandVisitor;


# static fields
.field public static final BLOCK_CMDDUMP:B = 0x40t

.field public static final BLOCK_CMDOK:B = 0x20t


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jacoco/core/data/ExecutionDataWriter;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public sendCmdOk()V
    .locals 2

    iget-object v0, p0, Lorg/jacoco/core/runtime/RemoteControlWriter;->out:Lorg/jacoco/core/internal/data/CompactDataOutput;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeByte(I)V

    return-void
.end method

.method public visitDumpCommand(ZZ)V
    .locals 2

    iget-object v0, p0, Lorg/jacoco/core/runtime/RemoteControlWriter;->out:Lorg/jacoco/core/internal/data/CompactDataOutput;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeByte(I)V

    iget-object v0, p0, Lorg/jacoco/core/runtime/RemoteControlWriter;->out:Lorg/jacoco/core/internal/data/CompactDataOutput;

    invoke-virtual {v0, p1}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeBoolean(Z)V

    iget-object v0, p0, Lorg/jacoco/core/runtime/RemoteControlWriter;->out:Lorg/jacoco/core/internal/data/CompactDataOutput;

    invoke-virtual {v0, p2}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeBoolean(Z)V

    return-void
.end method
