#!/usr/bin/env python2
# -*- coding: utf-8 -*-

# Contest Management System - http://cms-dev.github.io/
# Copyright © 2010-2012 Giovanni Mascellani <mascellani@poisson.phc.unipi.it>
# Copyright © 2010-2012 Stefano Maggiolo <s.maggiolo@gmail.com>
# Copyright © 2010-2012 Matteo Boscariol <boscarim@hotmail.com>
# Copyright © 2012-2014 Luca Wehrstedt <luca.wehrstedt@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

"""User-related database interface for SQLAlchemy.

"""

from __future__ import absolute_import
from __future__ import print_function
from __future__ import unicode_literals

from datetime import timedelta

from sqlalchemy.schema import Column, ForeignKey, CheckConstraint, \
    UniqueConstraint
from sqlalchemy.types import Boolean, Integer, String, Unicode, DateTime, \
    Interval
from sqlalchemy.orm import relationship, backref

from . import Base, Contest


def generate_random_password():
    import random
    chars = "abcdefghijklmnopqrstuvwxyz"
    return "".join([random.choice(chars) for _ in xrange(6)])


class Admin(Base):
    """Class to store a 'admin participating in a contest'.

    """
    # TODO: we really need to split this as a admin (as in: not paired
    # with a contest) and a participation.
    __tablename__ = 'admins'
    __table_args__ = (
        UniqueConstraint('adminname'),
    )

    # Auto increment primary key.
    id = Column(
        Integer,
        primary_key=True)

    # Adminname and password to log in the CWS.
    adminname = Column(
        Unicode,
        nullable=False)
    password = Column(
        Unicode,
        nullable=False,
        default=generate_random_password)


    # identity.
    identity = Column(
        Integer,
        nullable=False)

    user_id = Column(
        Unicode,
        nullable=False)

    # Follows the description of the fields automatically added by
    # SQLAlchemy.


    # Moreover, we have the following methods.
    # get_tokens (defined in __init__.py)


