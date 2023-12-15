#!/bin/bash

who | grep "^$1"

getent passwd | grep ":666:" | wc -l


