.class public Lcom/android/internal/telephony/GsmCdmaCall;
.super Lcom/android/internal/telephony/Call;
.source "GsmCdmaCall.java"


# instance fields
.field mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V
    .locals 0
    .param p1, "owner"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 31
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 33
    return-void
.end method


# virtual methods
.method public attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 73
    return-void
.end method

.method public attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 79
    return-void
.end method

.method public connectionDisconnected(Lcom/android/internal/telephony/GsmCdmaConnection;)Z
    .locals 5
    .param p1, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_2

    .line 88
    const/4 v0, 0x1

    .line 90
    .local v0, "hasOnlyDisconnectedConnections":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 91
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 93
    goto :goto_1

    .line 90
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 98
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 99
    const/4 v1, 0x1

    return v1

    .line 103
    .end local v0    # "hasOnlyDisconnectedConnections":Z
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 112
    :cond_0
    return-void
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v0

    return-object v0
.end method

.method public hangup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 60
    return-void
.end method

.method isFull()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getMaxConnectionsPerCall()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMultiparty()Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method onHangupLocal()V
    .locals 3

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 148
    .local v2, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->onHangupLocal()V

    .line 145
    .end local v2    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "i":I
    .end local v1    # "s":I
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 151
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, "changed":Z
    iget-object v1, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 120
    .local v1, "newState":Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    .line 121
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 122
    const/4 v0, 0x1

    .line 125
    :cond_0
    return v0
.end method
